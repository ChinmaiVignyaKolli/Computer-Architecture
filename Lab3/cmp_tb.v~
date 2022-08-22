`include "compare.v"

module comptb();

reg [4:0] in1;
reg [4:0] in2;
wire [4:0]d;
wire c;

subtractor sub(.a(in1),.b(in2),.diff(d),.borrow(c));

initial begin

$dumpfile("cmp.vcd");
$dumpvars(0,comptb);

$monitor("%5b  %5b  %5b  %b",in1,in2,diff,borrow);


in1 = 7 ;in2 =5;
#10 in1 = 6 ;in2 =5;
#10 in1 = 5 ;in2 =5;
#10 in1 = 6 ;in2 =6;

end
endmodule
