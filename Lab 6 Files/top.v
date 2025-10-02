    module top(
        input [7:0] sw,
        output [5:0] led
    );
    
    light light_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );
     
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    
    full_adder full_adder_inst(
        .A(sw[4]),
        .B(sw[6]),
        .C(0),
        .Y(led[3])
    );
    
    full_adder full_adder_2_inst(
        .A(sw[5]),
        .B(sw[7]),
        .C(full_adder_inst.Cout),
        .Y(led[4]),
        .Cout(led[5])
        
    );
        
        
        
endmodule