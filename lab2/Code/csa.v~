`include "fulladder.v"
`include "cla.v"
module ppgen(d,f,e);

input f;
input [15:0] d;
output [15:0] e;


genvar i;
generate
for(i=0;i<=15;i=i+1)
begin
assign e[i]=d[i]&f;
end
endgenerate

endmodule


module fad(x1,y1,z1,sum,out);
input x1,y1,z1;
output sum,out;

assign sum=x1^y1^z1;
assign out=(x1&y1)|(y1&z1)|(z1&x1);
endmodule


module main(a,b,s);
input [15:0] a;
input [15:0] b;
output [32:0] s;
wire [31:0] p[15:0];
wire [15:0] x[15:0];


genvar i,j;
generate
for(i=0;i<=15;i=i+1)
begin : ppgen1
ppgen p1(a,b[i],x[i]);
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

wire [31:0]u[4:0];
wire [31:0]v[4:0];
wire [31:0]u1[2:0];
wire [31:0]v1[2:0];
wire [31:0]u2[2:0];
wire [31:0]v2[2:0];
wire [31:0]u3[1:0];
wire [31:0]v3[1:0];
wire [31:0]u4[1:0];
wire [31:0]v4[1:0];
wire [31:0]u5[1:0];
wire [31:0]v5[1:0];


fulladder fa1(p[0],p[1],p[2],u[0],v[0]);
fulladder fa2(p[3],p[4],p[5],u[1],v[1]);
fulladder fa3(p[6],p[7],p[8],u[2],v[2]);
fulladder fa4(p[9],p[10],p[11],u[3],v[3]);
fulladder fa5(p[12],p[13],p[14],u[4],v[4]);



fulladder fa6(u[0],v[0],u[1],u1[0],v1[0]);
fulladder fa7(v[1],u[2],v[2],u1[1],v1[1]);
fulladder fa8(u[3],v[3],u[4],u1[2],v1[2]);


fulladder fa9(u1[0],v1[0],u1[1],u2[0],v2[0]);
fulladder fa10(v1[1],u1[2],v1[2],u2[1],v2[1]);


fulladder fa11(u2[0],v2[0],u2[1],u3[0],v3[0]);
fulladder fa12(v2[1],v[4],p[15],u3[1],v3[1]);


fulladder fa13(u3[0],v3[0],u3[1],u4[0],v4[0]);
fulladder fa14(u4[0],v4[0],v3[1],u5[0],v5[0]);
add ad1(u5[0],v5[0],s);
endmodule


