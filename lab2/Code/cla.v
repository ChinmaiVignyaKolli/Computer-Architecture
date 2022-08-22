`include "rd.v"
module kpg (input a1,a0,output s,b1,b0);
assign b1=a1&a0;
assign b0=a1|a0;
assign s=a1^a0;
endmodule

module add (a,b,s);
input [31:0] a;
input [31:0] b; 

output [32:0] s;


wire [32:0] k1;
wire [32:0] k0;

wire [32:0] q1;
wire [32:0] q0;
 
wire [32:0] out;
wire [32:0] y;



genvar i;
generate 
for(i=0;i<=31;i=i+1)
begin : rip1

kpg kpg0 (a[i],b[i],out[i],k1[i+1],k0[i+1]);
end 
endgenerate

assign k1[0]=0;
assign k0[0]=0;

rdm rdm0(k1,k0,q1,q0);

for(i=0;i<=31;i=i+1)
begin :rip2
assign y[i]=q0[i]&q1[i];
assign s[i]=out[i]^y[i];

end

assign s[32]=1'b0 ^ 1'b0 ^ (q1[32] & q0[32]);
endmodule
