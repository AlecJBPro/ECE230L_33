module d_flip_flop(
    input wire D,
    input wire clk,    
    output reg Q,
    output wire Qbar
);
    initial Q = 0;      

    always @(posedge clk) begin
        Q <= D;         
    end

    assign Qbar = ~Q;
endmodule
