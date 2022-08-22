module KGPM (a1,b1,o1);
input[1:0] a1;
input[1:0] b1;
output[1:0] o1;

assign o1[0]=(a1[0]&a1[1]) | (a1[0]&b1[0]);
assign o1[1]=(a1[0]&a1[1]) | (a1[0]&b1[1]);

endmodule
