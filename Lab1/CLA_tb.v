`include "CLA.v"


module CLAtb();

reg [15:0] ina1;
reg [15:0] inb1;
wire[16:0] out11;

inarray n(.r1(ina1),.r2(inb1),.sum(out11));


initial begin
$dumpfile("CLA1.vcd");
$dumpvars(0,CLAtb);
$monitor("a=%d\t b=%d\t output=%d\t",ina1,inb1,out11);

ina1=121;
inb1=151;
#10
ina1=28;
inb1=100;
#10
ina1=3;
inb1=2;

end
endmodule
