module axi_interface_des_decrypt
    #(
        parameter LATENCY = 17  // Number of clock cycles for decryption
    )
    (
        input wire         aclk,
        input wire         aresetn,
        
        // *** AXIS slave port ***
        output wire        s_axis_tready,
        input wire [127:0]  s_axis_tdata,
        input wire         s_axis_tvalid,
        input wire         s_axis_tlast,
        // *** AXIS master port ***
        input wire         m_axis_tready,
        output wire [63:0] m_axis_tdata,
        output wire        m_axis_tvalid,
        output wire        m_axis_tlast
    );
    
    wire [63:0] y_out;
    reg [63:0] input_reg;
    reg [$clog2(LATENCY):0] counter;
    reg valid_reg;
    reg last_reg;
    reg [63:0] key_reg;

    // AXI-Stream control
    assign s_axis_tready = (counter == 0) && m_axis_tready;
    assign m_axis_tdata = y_out;
    assign m_axis_tvalid = valid_reg && (counter == LATENCY);
    assign m_axis_tlast = last_reg && (counter == LATENCY);
    
    // Input registers and counter
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            input_reg <= 64'b0;
            key_reg <= 64'b0;
            counter <= 0;
            valid_reg <= 1'b0;
            last_reg <= 1'b0;
        end else begin
            if (s_axis_tvalid && s_axis_tready) begin
                input_reg <= s_axis_tdata[63:0];
                key_reg <= s_axis_tdata[127:64];
                counter <= 1;
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
    DES_decrypt des_decrypt_instance
    (
        .clk(aclk),
        .rst(!aresetn),
        .inp(input_reg),
        .key(key_reg),
        .outp(y_out)
    );
    
endmodule
