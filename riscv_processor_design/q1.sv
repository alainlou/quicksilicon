// Designing a 32-bit adder with sum and carry given as outputs
// The adder gets two 32-bit inputs: `a_i` and `b_i` and gives
// their sum as an output with a carry out as well.

module adder (
  input   wire [31:0]   a_i,
  input   wire [31:0]   b_i,
  output  wire [31:0]   sum_o,
  output  wire          carry_o
);

  assign {carry_o, sum_o} = a_i + b_i;

endmodule
