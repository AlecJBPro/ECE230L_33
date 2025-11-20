module one_hot_fsm(
    input clk,
    input reset,
    input w, //input
    output z, //output
    output [4:0] states
);

    //wire states
    wire A, B, C, D, E;

    //wire state pointers
    wire Anext, Bnext, Cnext, Dnext, Enext;


    assign states = {E, D, C, B, A};

    
    assign z = C | E;

    dff A_ff (
              .clk(clk),
              .reset(reset), 
              .D(Anext), 
              .Q(A)
              );
    dff B_ff (
              .clk(clk), 
              .reset(reset), 
              .D(Bnext), 
              .Q(B)
              );
    dff C_ff (
              .clk(clk), 
              .reset(reset), 
              .D(Cnext), 
              .Q(C)
              );
    dff D_ff (
              .clk(clk), 
              .reset(reset), 
              .D(Dnext), 
              .Q(D)
              );
    dff E_ff (
              .clk(clk), 
              .reset(reset), 
              .D(Enext), 
              .Q(E)
              );

    //next states from table

    assign Anext = 1'b0; //Start state

    assign Bnext = (A & ~w) | (D & ~w) | (E & ~w); 

    assign Cnext = (B & ~w);

    assign Dnext = (A &  w) | (B &  w) | (C &  w);

    assign Enext = (D &  w) | (E &  w);

endmodule
