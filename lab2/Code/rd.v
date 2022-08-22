module rd (input x11,x10,x21,x20,output b1,b0);
assign b1=x21 | (x11 & x20);

assign b0=x21 | (x20 &x10);

endmodule

module rdm(s1,s0,y1,y0);
input [32:0] s1;
input [32:0] s0;
output [32:0] y1;
output [32:0] y0;
wire [32:0] w1;
wire [32:0] w0;
wire [32:0] q1;
wire [32:0] q0;
wire [32:0] u1;
wire [32:0] u0;
wire [32:0] r1;
wire [32:0] r0;
wire [32:0] l0;
wire [32:0] l1;

genvar i;
generate 
for(i=32;i>0;i=i-1)
begin : ripple1
rd rd0(s1[i-1],s0[i-1],s1[i],s0[i],w1[i],w0[i]);
end
endgenerate


assign w1[0]=s1[0];
assign w0[0]=s0[0]; 




generate 
for(i=32;i>1;i=i-1)
begin : ripple2
rd rd1(w1[i-2],w0[i-2],w1[i],w0[i],u1[i],u0[i]);
end
endgenerate

assign u1[0]=w1[0];
assign u0[0]=w0[0];
assign u1[1]=w1[1];
assign u0[1]=w0[1];


generate 
for(i=32;i>3;i=i-1)
begin : ripple3
rd rd2(u1[i-4],u0[i-4],u1[i],u0[i],r1[i],r0[i]);
end
endgenerate

assign r1[0]=u1[0];
assign r0[0]=u0[0];
assign r1[1]=u1[1];
assign r0[1]=u0[1];
assign r1[2]=u1[2];
assign r0[2]=u0[2];
assign r1[3]=u1[3];
assign r0[3]=u0[3];


for(i=0;i<=7;i=i+1)
 begin
assign l1[i]=r1[i];
assign l0[i]=r0[i];
end


generate 
for(i=32;i>7;i=i-1)
begin : ripple4
rd rd(r1[i-8],r0[i-8],r1[i],r0[i],l1[i],l0[i]);
end
endgenerate 

for(i=0;i<=15;i=i+1)
 begin
assign y1[i]=l1[i];
assign y0[i]=l0[i];
end


generate 
for(i=32;i>15;i=i-1)
begin : ripple5
rd rd(l1[i-16],l0[i-16],l1[i],l0[i],y1[i],y0[i]);
end
endgenerate 


endmodule

















