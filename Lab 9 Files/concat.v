module concat(
    input btnU, btnD, btnL, btnR

    );
    
    wire [1:0] brute1;
    assign brute1[0] = btnL;
    assign brute1[1] = btnU;
    
    wire[1:0] brute2;
    assign brute2[0] = btnD;
    assign brute2[1] = btnR;
endmodule
