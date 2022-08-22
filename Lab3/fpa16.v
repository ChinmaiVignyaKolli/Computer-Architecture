module fpsum(a,b,s);

input [15:0] a;
input [15:0] b;
output [15:0] s;  

// first bit is signbit ,5 bit exponent ,10 bit mantissa .

wire [4:0] e1;
wire [4:0] e2;
wire w1;

e1 = [5:1]a;
e2 = [5:1]b;

compare comp(e1,e2,w1);
 
