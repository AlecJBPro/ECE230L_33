module dff(
    input clk,
    input reset,
    input D,
    output reg Q
);
    always @(posedge clk or posedge reset)
        if (reset)
            Q <= 1'b0;   
        else
            Q <= D;
    end
endmodule