module axis_pe
    (
        input wire         aclk,
        input wire         aresetn,
        // *** Control ***
        input wire         en,
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
    
    // AXI-Stream control
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tdata = en ? {56'h000000, y_out} : 64'd0;
    assign m_axis_tvalid = s_axis_tvalid;
    assign m_axis_tlast = s_axis_tlast;
    
    // PE
    DES_encrypt pe_0
    (
        .inp(s_axis_tdata[63:0]),
        .key(s_axis_tdata[127:64]),
        .outp(y_out)
    );
    
endmodule
