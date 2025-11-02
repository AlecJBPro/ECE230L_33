module demux1(
    input data,
    input [1:0] Sel,
    output reg A,
    output reg B,
    output reg C,
    output reg D
    );
    
    always @(*) begin 
//        A <= 8'b0;
//        B <= 8'b0;
//        C <= 8'b0;
//        D <= 8'b0;
//        case(Sel)
//            2'b00: A <= data;
//            2'b01: B <= data;
//            2'b10: C <= data;
//            2'b11: D <= data;

          case(Sel)
            2'b00: {D, C, B, A} <= {'b0, 'b0, 'b0, data}; 
            2'b01: {D, C, B, A} <= {'b0, 'b0, data, 'b0};
            2'b10: {D, C, B, A} <= {'b0, data, 'b0, 'b0};
            2'b11: {D, C, B, A} <= {data, 'b0, 'b0, 'b0};
        endcase
    end
endmodule