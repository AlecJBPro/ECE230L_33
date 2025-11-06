module t_flip_flop(
    input wire T,
    input wire clk,    
    output reg Q,
    output wire Qbar
);
    initial Q = 0;

    always @(posedge clk) begin
        if (T)
            Q <= ~Q;     
        else
            Q <= Q;     
    end

    assign Qbar = ~Q;
endmodule
