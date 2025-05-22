module axi_interface_tdes_encrypt
    (
        input wire         aclk,
        input wire         aresetn,
        
        // *** AXIS slave port ***
        output wire        s_axis_tready,
        input wire [255:0]  s_axis_tdata,
        input wire         s_axis_tvalid,
        input wire         s_axis_tlast,
        // *** AXIS master port ***
        input wire         m_axis_tready,
        output wire [63:0] m_axis_tdata,
        output wire        m_axis_tvalid,
        output wire        m_axis_tlast
    );
    
    wire [63:0] y_out;
    reg [63:0] y_out_reg;
    reg m_axis_tvalid_reg;
    reg m_axis_tlast_reg;
    
    // AXI-Stream control
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tdata = y_out_reg;
    assign m_axis_tvalid = m_axis_tvalid_reg;
    assign m_axis_tlast = m_axis_tlast_reg;
    
    // Register outputs
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            y_out_reg <= 64'b0;
            m_axis_tvalid_reg <= 1'b0;
            m_axis_tlast_reg <= 1'b0;
        end else begin
            y_out_reg <= y_out;
            m_axis_tvalid_reg <= s_axis_tvalid;
            m_axis_tlast_reg <= s_axis_tlast;
        end
    end
    
    // PE
    TDES_encrypt tdes_encrypt_instance
    (
        .clk(aclk),
        .rst(!aresetn),
        .inp(s_axis_tdata[63:0]),
        .key(s_axis_tdata[127:64]),
        .key1(s_axis_tdata[191:128]),
        .key2(s_axis_tdata[255:192]),
        .outp(y_out)
    );
    
endmodule
