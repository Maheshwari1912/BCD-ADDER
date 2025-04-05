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

module multibit_bcd_adder(
  input [15:0] A,
  input [15:0] B,
  output [15:0] sum,
  output cout);
  wire [3:0] carry;
  bcd_adder B1(.A(A[3:0]),.B(B[3:0]),.cin(1'b0),.sum(sum[3:0]),.cout(carry[0]));
  bcd_adder B2(.A(A[7:4]),.B(B[7:4]),.cin(carry[0]),.sum(sum[7:4]),.cout(carry[1]));
  bcd_adder B3(.A(A[11:8]),.B(B[11:8]),.cin(carry[1]),.sum(sum[11:8]),.cout(carry[2]));
  bcd_adder B4(.A(A[15:12]),.B(B[15:12]),.cin(carry[2]),.sum(sum[15:12]),.cout(cout));
endmodule
