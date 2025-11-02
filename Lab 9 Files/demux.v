module demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y1,
    output [3:0] Y2,
    output [3:0] Y3,
    output [3:0] Y4
    );
    
    assign Y1 = Sel == 'b00 && Enable ? In : 0; 
    assign Y2 = Sel == 'b01 && Enable ? In : 0;
    assign Y3 = Sel == 'b10 && Enable ? In : 0;
    assign Y4 = Sel == 'b11 && Enable ? In : 0;
endmodule