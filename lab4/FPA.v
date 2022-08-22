module FPA(a,b,sum);
input a[15:0],b[15:0];
output sum[15:0];
wire sign,exp[4:0],mantissa[9:0],sign1,exp1[4:0],mantissa1[9:0];
wire eq,gt;

sign = a[0];
exp[4:0] = a[5:1];
mantissa[9:0] = a[15:6]; 

sign1 = b[0];
exp1[4:0] = b[5:1];
mantissa1[9:0] = b[15:6]; 

assign eq = (exp1 == exp) ? 1 : 0;

assign gt = (exp1 > exp) ? (exp1-exp) : 0;

assign lt = (exp1 < exp) ? (exp-exp1) : 0;

if lt > 0
exp = exp + lt;
shifter sh(mantissa,lt,smantissa);
end if

if gt > 0
exp1 = exp1 + gt;
end if









