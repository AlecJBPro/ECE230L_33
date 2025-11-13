module ripple_counter(
    input  wire clk,
    input  wire reset,
    output wire [2:0] led  
);
    wire [2:0] q;


    t_ff T0 (.clk(clk), 
            .reset(reset), 
            .T(1'b1), 
            .Q(q[0]));
    t_ff T1 (.clk(q[0]), 
            .reset(reset), 
            .T(1'b1), 
            .Q(q[1]));
    t_ff T2 (.clk(q[1]), 
            .reset(reset), 
            .T(1'b1), 
            .Q(q[2]));

    assign led = q;
endmodule