module fulladder(x,y,z,sum,cout);
input [31:0] x;
input [31:0] y;
input [31:0] z;


output [31:0] sum;
output [31:0] cout;
genvar i;
 assign sum[31]=1'b0;
 assign cout[0]=1'b0;
generate
for(i=0;i<31;i=i+1)
begin :ugyufyt
assign sum[i]= x[i]^y[i]^z[i];
assign cout[i+1] = (x[i]&y[i]) | (y[i]&z[i]) | (x[i]&z[i]);
end
endgenerate
endmodule

