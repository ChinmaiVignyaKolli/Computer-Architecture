`include "full_adder.v"
module subtractor(a,b,diff,borrow );



input [4:0] a ;
input [4:0] b ; 

wire [3:0]s;
wire [4:0]l;

output [4:0] diff ;
output borrow ;

full_adder u0 (a[0],l[0],1'b1,diff[0],s[0]);
full_adder u1 (a[1],l[1],s[0],diff[1],s[1]);
full_adder u2 (a[2],l[2],s[1],diff[2],s[2]);
full_adder u3 (a[3],l[3],s[2],diff[3],s[3]);
full_adder u4 (a[4],l[4],s[3],diff[4],borrow);

endmodule

