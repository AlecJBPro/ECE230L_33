module top(
    input wire btnC,      
    input wire [3:0] sw,      
    output wire [5:0] led     
);

    d_flip_flop DFF (
        .D(sw[0]),
        .clk(btnC),
        .Q(led[0]),
        .Qbar(led[1])
    );


    jk_flip_flop JKFF (
        .J(sw[1]),
        .K(sw[2]),
        .clk(btnC),
        .Q(led[2]),
        .Qbar(led[3])
    );

    t_flip_flop TFF (
        .T(sw[3]),
        .clk(btnC),
        .Q(led[4]),
        .Qbar(led[5])
    );
endmodule
