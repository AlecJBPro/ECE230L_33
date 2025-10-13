    module ones_compliment(
        input A, B, C, D, E, F, G, H, I,
        output Y, X, Z, y
    );
    
    wire [3:0] APlusB;
    wire [3:0] carry;
    wire [3:0] secondcarry;
    wire around;
    
    
    full_adder Afa0_inst(
           .A(A),
           .B(E),
           .C(0),
           .Y(APlusB[0]),
           .Cout(carry[0])
    );
    full_adder Afa1_inst(
           .A(B),
           .B(F),
           .C(carry[0]),
           .Y(APlusB[1]),
           .Cout(carry[1])
    );
    full_adder Afa2_inst(
           .A(C),
           .B(G),
           .C(carry[1]),
           .Y(APlusB[2]),
           .Cout(carry[2])
    );
    full_adder Afa3_inst(
           .A(D),
           .B(H),
           .C(carry[2]),
           .Y(APlusB[3]),
           .Cout(around)
    );
    full_adder Afa4_inst(
           .A(APlusB[0]),
           .B(0),
           .C(around),
           .Y(Y),
           .Cout(secondcarry[0])
    );
    full_adder Afa5_inst(
           .A(APlusB[1]),
           .B(0),
           .C(secondcarry[0]),
           .Y(X),
           .Cout(secondcarry[1])
    );
    full_adder Afa6_inst(
           .A(APlusB[2]),
           .B(0),
           .C(secondcarry[1]),
           .Y(Z),
           .Cout(secondcarry[2])
    );
    full_adder Afa7_inst(
           .A(APlusB[3]),
           .B(0),
           .C(secondcarry[2]),
           .Y(y)
    );
   
    
endmodule