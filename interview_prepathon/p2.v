module big_endian_converter #(
  parameter DATA_W = 32
)(
  input   wire              clk,
  input   wire              reset,

  input   wire [DATA_W-1:0] le_data_i,

  output  wire [DATA_W-1:0] be_data_o

);

  generate
    for(genvar i = 0; i < DATA_W/8; i++) begin
      assign be_data_o[(i+1)*8-1 -: 8] = le_data_i[DATA_W-1-(i*8) -: 8];
    end
  endgenerate

endmodule
