#!/usr/bin/env python3
import os

def get_algorithm_config(algorithm_name):
    # Define input/output bit widths and key configuration based on algorithm
    configs = {
        "SDES": {
            "input_width": 32,  # 8 bits data + 10 bits key
            "message_width": 8,
            "output_width": 32, # Min axi width is 32
            "key_bits": [10],
            "latency": 10  # Adjust based on SDES implementation
        },
        "DES": {
            "input_width": 128,  # 64 bits data + 64 bits key
            "message_width": 64,
            "output_width": 64,
            "key_bits": [64],
            "latency": 21
        },
        "TDES": {
            "input_width": 256,  # 64 bits data + 3*64 bits key
            "message_width": 64,
            "output_width": 64,
            "key_bits": [64, 64, 64],
            "latency": 63  # 3 * DES latency
        },
        "DESX": {
            "input_width": 256,  # 64 bits data + 64 bits main key + 2*64 bits additional keys
            "message_width": 64,
            "output_width": 64,
            "key_bits": [64, 64, 64],
            "latency": 21  # Same as DES
        },
        "DESXL": {
            "input_width": 256,  # 64 bits data + 64 bits main key + 2*64 bits additional keys
            "message_width": 64,
            "output_width": 64,
            "key_bits": [64, 64, 64],
            "latency": 21  # Same as DES
        },
        "DESL": {
            "input_width": 128,  # 64 bits data + 64 bits key
            "message_width": 64,
            "output_width": 64,
            "key_bits": [64],
            "latency": 21  # Same as DES
        }
    }
    
    if algorithm_name.upper() not in configs:
        raise ValueError(f"Unsupported algorithm: {algorithm_name}")
    
    return configs[algorithm_name.upper()]

def generate_axi_wrapper(algorithm_name, operation="encrypt"):
    if operation not in ["encrypt", "decrypt"]:
        raise ValueError(f"Unsupported operation: {operation}")
    
    config = get_algorithm_config(algorithm_name)
    
    # Generate the module code
    code = f"""module axi_interface_{algorithm_name.lower()}_{operation}
    #(
        parameter LATENCY = {config['latency']}  // Number of clock cycles for {operation}ion
    )
    (
        input wire         aclk,
        input wire         aresetn,
        
        // *** AXIS slave port ***
        output wire        s_axis_tready,
        input wire [{config['input_width']-1}:0]  s_axis_tdata,
        input wire         s_axis_tvalid,
        input wire         s_axis_tlast,
        // *** AXIS master port ***
        input wire         m_axis_tready,
        output wire [{config['output_width']-1}:0] m_axis_tdata,
        output wire        m_axis_tvalid,
        output wire        m_axis_tlast
    );
    
    wire [{config['output_width']-1}:0] y_out;
    reg [{config['message_width']-1}:0] input_reg;
    reg [$clog2(LATENCY):0] counter;
    reg valid_reg;
    reg last_reg;
"""
    
    # Add key registers based on algorithm configuration
    current_bit = config['message_width']
    for i, key_width in enumerate(config['key_bits']):
        code += f"    reg [{key_width-1}:0] key{str(i) if i > 0 else ''}_reg;\n"
    
    code += f"""
    // AXI-Stream control
    assign s_axis_tready = (counter == 0) && m_axis_tready;
    assign m_axis_tdata = y_out;
    assign m_axis_tvalid = valid_reg && (counter == LATENCY);
    assign m_axis_tlast = last_reg && (counter == LATENCY);
    
    // Input registers and counter
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            input_reg <= {config['message_width']}'b0;
"""
    
    # Reset key registers
    for i in range(len(config['key_bits'])):
        code += f"            key{str(i) if i > 0 else ''}_reg <= {config['key_bits'][i]}'b0;\n"
    
    code += """            counter <= 0;
            valid_reg <= 1'b0;
            last_reg <= 1'b0;
        end else begin
            if (s_axis_tvalid && s_axis_tready) begin
                input_reg <= s_axis_tdata[{}:0];
""".format(config['message_width']-1)
    
    # Assign key registers
    current_bit = config['message_width']
    for i, key_width in enumerate(config['key_bits']):
        code += f"                key{str(i) if i > 0 else ''}_reg <= s_axis_tdata[{current_bit + key_width - 1}:{current_bit}];\n"
        current_bit += key_width
    
    code += """                counter <= 1;
                valid_reg <= 1'b1;
                last_reg <= s_axis_tlast;
            end else if (counter > 0) begin
                if (counter == LATENCY && m_axis_tready) begin
                    counter <= 0;
                    valid_reg <= 1'b0;
                    last_reg <= 1'b0;
                end else if (counter < LATENCY) begin
                    counter <= counter + 1;
                end
            end
        end
    end
    
    // PE
    {}_{} {}_{}_instance
    (
        .clk(aclk),
        .rst(!aresetn),
        .inp(input_reg)""".format(algorithm_name, operation, algorithm_name.lower(), operation)
    
    # Add key connections based on algorithm configuration
    for i in range(len(config['key_bits'])):
        code += f",\n        .key{str(i) if i > 0 else ''}(key{str(i) if i > 0 else ''}_reg)"
    
    code += """,
        .outp(y_out)
    );
    
endmodule
"""
    return code

def main():
    # List of all supported algorithms
    algorithms = ["SDES", "DES", "TDES", "DESX", "DESXL", "DESL"]
    output_dir = "BScThesis.srcs/sources_1/axi_wrappers"
    
    print("Generating AXI wrappers for all algorithms...")
    
    for algorithm in algorithms:
        try:
            # Generate both encryption and decryption wrappers
            for operation in ["encrypt", "decrypt"]:
                wrapper_code = generate_axi_wrapper(algorithm, operation)
                output_file = f"axi_wrapper_{algorithm}_{operation.upper()}.v"
                
                with open(os.path.join(output_dir, output_file), 'w') as f:
                    f.write(wrapper_code)
                
                print(f"Generated {output_file} successfully!")
        except ValueError as e:
            print(f"Error generating {algorithm} {operation}: {e}")
            continue
    
    print("\nGeneration complete!")

if __name__ == "__main__":
    main() 