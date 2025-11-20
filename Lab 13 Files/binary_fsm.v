module binary_fsm(
    input clk,
    input reset,
    input w, //iunput
    output z, //output
    output [2:0] states
);

    //curr state bit
    wire x0, x1, x2;

    //next state bit
    wire X0, X1, X2;

    assign states = {x2, x1, x0};

    //ouput based on state bits made from kmap
    assign z = (x2 & ~x1 & ~x0) | (~x2 & x1 & ~x0);

    dff ff0 (
              .clk(clk), 
              .reset(reset), 
              .D(X0), 
              .Q(x0)
            );
    dff ff1 (
              .clk(clk), 
              .reset(reset), 
              .D(X1), 
              .Q(x1)
            );
    dff ff2 (
              .clk(clk), 
              .reset(reset), 
              .D(X2), 
              .Q(x2)
            );

  
     //next states
    assign X2 = (x0 & x1 & w) | (x2 & w); //next MSB
    assign X1 = (~x2 & x0 & ~w) | (~x2 & ~x1 & w); //next middle bit
    assign X0 = (~x2 & ~x1 & ~x0 & ~w) | (x1 & ~x0 & ~w); //next LSB

endmodule
