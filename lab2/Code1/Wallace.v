`include "fulladder.v"
`include "CLA.v"

module partialprod(b,a,pp);
input a;
input [15:0] b;
output [15:0] pp;


genvar i;
generate
for(i=0;i<=15;i=i+1)
begin
assign pp[i]=b[i]&a;
end
endgenerate
endmodule

/*
module fad(x1,y1,z1,sum,out);
input x1,y1,z1;
output sum,out;

assign sum=x1^y1^z1;
assign out=(x1&y1)|(y1&z1)|(z1&x1);
endmodule
*/

module wallace(a,b,s);
input [15:0] a;
input [15:0] b;
output [32:0] s;
wire [31:0] p[15:0];
wire [15:0] x[15:0];


genvar i,j;
generate
for(i=0;i<=15;i=i+1)
begin : ppgen
partialprod p1(a,b[i],x[i]);
end
endgenerate


for(j=0;j<=15;j=j+1)
begin
assign p[j][j+15:j]=x[j][15:0];
end


assign p[0][31:16]=0;
for(j=1;j<=15;j=j+1)
begin
assign p[j][31:16+j]=0;
assign p[j][j-1:0]=0;
end

wire [31:0]y0[4:0];
wire [31:0]z0[4:0];
wire [31:0]y1[2:0];
wire [31:0]z1[2:0];
wire [31:0]y2[2:0];
wire [31:0]z2[2:0];
wire [31:0]y3[1:0];
wire [31:0]z3[1:0];
wire [31:0]y4[1:0];
wire [31:0]z4[1:0];
wire [31:0]y5[1:0];
wire [31:0]z5[1:0];


fulladder fa1(p[0],p[1],p[2],y0[0],z0[0]);
fulladder fa2(p[3],p[4],p[5],y0[1],z0[1]);
fulladder fa3(p[6],p[7],p[8],y0[2],z0[2]);
fulladder fa4(p[9],p[10],p[11],y0[3],z0[3]);
fulladder fa5(p[12],p[13],p[14],y0[4],z0[4]);



fulladder fa6(y0[0],z0[0],y0[1],y1[0],z1[0]);
fulladder fa7(z0[1],y0[2],z0[2],y1[1],z1[1]);
fulladder fa8(z0[3],y0[3],z0[4],y1[2],z1[2]);


fulladder fa9(y1[0],z1[0],y1[1],y2[0],z2[0]);
fulladder fa10(z1[1],y1[2],z1[2],y2[1],z2[1]);


fulladder fa11(y2[0],z2[0],y2[1],y3[0],z3[0]);
fulladder fa12(z2[1],y0[4],p[15],y3[1],z3[1]);


fulladder fa13(y3[0],z3[0],y3[1],y4[0],z4[0]);
fulladder fa14(y4[0],z4[0],z3[1],y5[0],z5[0]);
inarray ad1(y5[0],z5[0],s);

endmodule




