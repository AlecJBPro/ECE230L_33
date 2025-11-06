module d_flipflop(
    input D,
    input clk,    
    output reg Q,
    output Qbar
);
    initial Q = 0;      

    always @(posedge clk) begin
        Q <= D;         
    end

    assign Qbar = ~Q;
endmodule
