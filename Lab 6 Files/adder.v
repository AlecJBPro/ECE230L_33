module adder(
    input A, B,
    output Y, Carry
    // Declare carry output
);

    assign Y = A ^ B;
    assign Carry = A & B;

endmodule