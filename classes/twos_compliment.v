    module twos_compliment(
        input A, B, C, D, E, F, G, H,
        output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
        );
        wire [7:0]o;
        assign o[0] = ~A;
        assign o[1] = ~B;
        assign o[2] = ~C;
        assign o[3] = ~D;
        assign o[4] = ~E;
        assign o[5] = ~F;
        assign o[6] = ~G;
        assign o[7] = ~H;
       
        wire [6:0] carry;

        full_adder fa0_inst(
            .A(o[0]),
            .B(1),
            .C(0),
            .Y(Y0),
            .Cout(carry[0])
            );
            
        full_adder fa1_inst(
            .A(o[1]),
            .B(0),
            .C(carry[0]),
            .Y(Y1),
            .Cout(carry[1])
            );
        full_adder fa2_inst(
            .A(o[2]),
            .B(0),
            .C(carry[1]),
            .Y(Y2),
            .Cout(carry[2])
            );
        full_adder fa3_inst(
            .A(o[3]),
            .B(0),
            .C(carry[2]),
            .Y(Y3),
            .Cout(carry[3])
            );
        full_adder fa4_inst(
            .A(o[4]),
            .B(1),
            .C(carry[3]),
            .Y(Y4),
            .Cout(carry[4])
            );
            
        full_adder fa5_inst(
            .A(o[5]),
            .B(0),
            .C(carry[4]),
            .Y(Y5),
            .Cout(carry[5])
            );
        full_adder fa6_inst(
            .A(o[6]),
            .B(0),
            .C(carry[5]),
            .Y(Y6),
            .Cout(carry[6])
            );
        full_adder fa7_inst(
            .A(o[7]),
            .B(0),
            .C(carry[6]),
            .Y(Y7)
            );
        
       
endmodule