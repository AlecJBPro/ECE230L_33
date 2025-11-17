module t_flipflop(
    input   clk,
    input   reset,
    input   T,
    output reg  Q 
);

wire q_ff;
assign q_ff = (T) ?  ~Q:Q;


always @(posedge clk, posedge reset)begin
    if(reset) 
        Q<=1'b0;
    else
        Q<=q_ff;

end
endmodule