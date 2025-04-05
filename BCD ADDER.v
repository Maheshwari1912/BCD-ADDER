module bcd_adder(
  input [3:0] A,
  input [3:0] B,
  input cin,
  output [3:0] sum,
  output cout
);
  wire [4:0] binarysum;
  wire [3:0] bcd_sum;
  wire correction;
  assign binarysum = A + B + cin;
  assign correction = (binarysum > 9);
  assign bcdsum = coorection ? (binarysum + 4'b0110) : binarysum;
  assign sum = bcd_sum[3:0];
  assign cout = (correction || binarysum[4]);
endmodule
