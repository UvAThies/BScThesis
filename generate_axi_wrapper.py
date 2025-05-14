#!/usr/bin/env python3
import os

def get_algorithm_config(algorithm_name):
    # Define input/output bit widths and key configuration based on algorithm
    configs = {
        "SDES": {
            "input_width": 32,  # 8 bits data + 10 bits key
            "output_width": 8,
            "key_bits": [10]
        },
        "DES": {
            "input_width": 128,  # 64 bits data + 64 bits key
            "output_width": 64,
            "key_bits": [64]
        },
        "TDES": {
            "input_width": 256,  # 64 bits data + 3*64 bits key
            "output_width": 64,
            "key_bits": [64, 64, 64]
        },
        "DESX": {
            "input_width": 256,  # 64 bits data + 64 bits main key + 2*64 bits additional keys
            "output_width": 64,
            "key_bits": [64, 64, 64]
        },
        "DESXL": {
            "input_width": 256,  # 64 bits data + 64 bits main key + 2*64 bits additional keys
            "output_width": 64,
            "key_bits": [64, 64, 64]
        },
        "DESL": {
            "input_width": 128,  # 64 bits data + 64 bits key
            "output_width": 64,
            "key_bits": [64]
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
    
    // AXI-Stream control
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tdata = y_out;
    assign m_axis_tvalid = s_axis_tvalid;
    assign m_axis_tlast = s_axis_tlast;
    
    // PE
    {algorithm_name}_{operation} {algorithm_name.lower()}_{operation}_instance
    (
        .inp(s_axis_tdata[{config['output_width']-1}:0])"""
    
    # Add key connections based on algorithm configuration
    current_bit = config['output_width']
    for i, key_width in enumerate(config['key_bits']):
        code += f",\n        .key{'1' if i > 0 else ''}(s_axis_tdata[{current_bit + key_width - 1}:{current_bit}])"
        current_bit += key_width
    
    code += f""",
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