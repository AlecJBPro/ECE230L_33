module mux(
    input [1:0] sel,
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input Enable,
    output [3:0] Y
    );
    
    assign Y = (Enable == 0 ? 0 : (sel == 'b00 ? A : 
                sel == 'b01 ? B :
                sel == 'b10 ? C :
                D) );
endmodule
