module pe
    #( 
        parameter WIDTH = 8
           )
    (
        input wire signed [WIDTH-1:0]  a_in,
        input wire signed [WIDTH-1:0]  b_in,
        input wire signed [WIDTH-1:0]  y_in,
        output wire signed [WIDTH-1:0] y_out
    );
    
    
    assign y_out = a_in + b_in + y_in;

endmodule
