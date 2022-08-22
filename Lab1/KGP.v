module KGP (a,b,o);
input a, b;
output[1:0] o;

assign o[0]=a|b;
assign o[1]=a&b;

endmodule
