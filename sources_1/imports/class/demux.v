module demux(
    input [7:0] data,
    input [1:0] Sel,
    input Enable,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
    );
    
always @(*) begin

    case(Sel)
        2'b00: {D, C, B, A} <= {'b0, 'b0, 'b0, data}; 
        2'b01: {D, C, B, A} <= {'b0, 'b0, data, 'b0};
        2'b10: {D, C, B, A} <= {'b0, data, 'b0, 'b0};
        2'b11: {D, C, B, A} <= {data, 'b0, 'b0, 'b0};
    endcase
end
endmodule