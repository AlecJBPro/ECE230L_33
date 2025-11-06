module jk_flip_flop(
    input J,
    input K,
    input clk,      
    output Q,
    output Qbar
);
    wire D_int;
    wire Q_int, Qbar_int;

    assign D_int = (J & ~Q_int) | (~K & Q_int);


    d_flipflop DFF (
        .D(D_int),
        .clk(clk),
        .Q(Q_int),
        .Qbar(Qbar_int)
    );

    assign Q    = Q_int;
    assign Qbar = Qbar_int;
endmodule 
