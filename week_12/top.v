module top(
    input wire btnU,  
    input wire btnC,  
    output wire [6:0] led
);

    ripple_counter rc (
        .clk(btnC),
        .reset(btnU),
        .led(led[2:0])
    );

    modulo_divider md (
        .clk(btnC),
        .reset(btnU),
        .state_bits(led[5:3]),
        .out(led[6])
    );
endmodule