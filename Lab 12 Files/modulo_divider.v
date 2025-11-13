module modulo_divider(
    input  wire clk,
    input  wire reset,
    output wire [2:0] state_bits,
    output reg  out             
);
  
    wire [2:0] Q;       
    wire [2:0] SUM;       
    wire c1, c2, c3;     
    wire cmp_hit;        

    full_adder FA0 (
        .A(Q[0]),
        .B(1'b1),
        .C(1'b0),
        .Y(SUM[0]),
        .cout(c1)
    );

    full_adder FA1 (
        .A(Q[1]),
        .B(1'b0),
        .C(c1),
        .Y(SUM[1]),
        .cout(c2)
    );

    full_adder FA2 (
        .A(Q[2]),
        .B(1'b0),
        .C(c2),
        .Y(SUM[2]),
        .Cout(c3)
    );

    assign cmp_hit = (Q == 3'b101);

    reg [2:0] count_reg;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count_reg <= 3'b000;
            out <= 1'b0;
        end
        else if (cmp_hit) begin
            count_reg <= 3'b000;
            out <= ~out;   
        end
        else
            count_reg <= SUM;
    end

    assign Q = count_reg;
    assign state_bits = Q;

endmodule
