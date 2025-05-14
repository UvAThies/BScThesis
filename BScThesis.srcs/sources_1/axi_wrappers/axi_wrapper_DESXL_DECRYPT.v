module axi_interface_desxl_decrypt
    (
        input wire         aclk,
        input wire         aresetn,
        
        // *** AXIS slave port ***
        output wire        s_axis_tready,
        input wire [254:0]  s_axis_tdata,
        input wire         s_axis_tvalid,
        input wire         s_axis_tlast,
        // *** AXIS master port ***
        input wire         m_axis_tready,
        output wire [63:0] m_axis_tdata,
        output wire        m_axis_tvalid,
        output wire        m_axis_tlast
    );
    
    wire [63:0] y_out;
    
    // AXI-Stream control
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tdata = y_out;
    assign m_axis_tvalid = s_axis_tvalid;
    assign m_axis_tlast = s_axis_tlast;
    
    // PE
    DESXL_decrypt desxl_decrypt_instance
    (
        .inp(s_axis_tdata[63:0]),
        .key(s_axis_tdata[127:64]),
        .key1(s_axis_tdata[191:128]),
        .key1(s_axis_tdata[255:192]),
        .outp(y_out)
    );
    
endmodule
