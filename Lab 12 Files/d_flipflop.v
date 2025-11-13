module d_flipflop(
    input  wire clk,
    input  wire reset,
    input  wire D,
    output reg  Q
);
    always @(posedge clk or posedge reset)
        if (reset)
            Q <= 0;
        else
            Q <= D;
endmodule
