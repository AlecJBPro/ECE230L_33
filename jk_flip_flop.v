module jk_flip_flop(
    input wire J,
    input wire K,
    input wire clk,      
    output wire Q,
    output wire Qbar
);
    wire D_internal;
    wire Q_int, Qbar_int;

    assign D_internal = (J & ~Q_int) | (~K & Q_int);


    d_flip_flop DFF (
        .D(D_internal),
        .clk(clk),
        .Q(Q_int),
        .Qbar(Qbar_int)
    );

    assign Q    = Q_int;
    assign Qbar = Qbar_int;
endmodule 
