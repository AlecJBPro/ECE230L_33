module top(
    input btnC,      
    input [3:0] sw,      
    output [5:0] led     
);

wire clk;
assign clk = btnC;
    d_flipflop DFF (
        .D(sw[0]),
        .clk(clk),
        .Q(led[0]),
        .Qbar(led[1])
    );


    jk_flip_flop JKFF (
        .J(sw[1]),
        .K(sw[2]),
        .clk(clk),
        .Q(led[2]),
        .Qbar(led[3])
    );

    t_flipflop TFF (
        .T(sw[3]),
        .clk(clk),
        .Q(led[4]),
        .Qbar(led[5])
    );
endmodule
