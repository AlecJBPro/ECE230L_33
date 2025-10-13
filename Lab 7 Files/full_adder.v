    module full_adder(
        input A, B, C,
        output Y, Cout
        );
        
        assign Y = (~A & ~B & C) | (~A & B & ~C) | (A & B & C) | (A & ~B & ~C);
        assign Cout = (B & C) | (A & C) | (A & B);
        
        
endmodule