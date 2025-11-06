module t_flipflop(
    input T,
    input clk,    
    output reg Q,
    output Qbar
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
