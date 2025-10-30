module mux(
    input [1:0] sel,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input Enable,
    output  reg [7:0] Y
    );
    
    always @(*) begin
        case(sel)
            2'b00: Y <= A;
            2'b01: Y <= B;
            2'b10: Y <= C;
            2'b11: Y <= D;
        endcase 
    end 
endmodule
