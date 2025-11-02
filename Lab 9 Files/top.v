module top(
    input [15:0] sw,
    input btnU, btnD, btnL, btnR, btnC,
    output [15:0] led
    );
    
    wire [1:0] brute1;
    assign brute1[0] = btnL;
    assign brute1[1] = btnU;
    
    wire[1:0] brute2;
    assign brute2[0] = btnD;
    assign brute2[1] = btnR;
    
    wire[3:0] bus;
    
    
   mux mux_inst(brute1, sw[3:0], sw[7:4], sw[11:8], sw[15:12], btnC, bus);
   

   demux demux_inst(bus, brute2, btnC, led[3:0], led[7:4], led[11:8], led[15:12]);
    
    
endmodule