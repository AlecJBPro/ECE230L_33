module top(
    input btnC, //clk
    input btnU, //rst
    input sw, //w
    output [9:0] led //leds
);

    one_hot_fsm OH (
        .clk(btnC),
        .reset(btnU),
        .w(sw),
        .z(led[0]),
        .states(led[6:2])
    );

    binary_fsm BIN (
        .clk(btnC),
        .reset(btnU),
        .w(sw),
        .z(led[1]),
        .states(led[9:7])
    );

endmodule
