`include "CLA.v"


module CLAtb();

reg [31:0] ina1;
reg [31:0] inb1;
wire[32:0] out11;

inarray n(.r1(ina1),.r2(inb1),.sum(out11));


initial begin
$dumpfile("CLA2.vcd");
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
#10
ina1 = 1073856511;
inb1 = 0;
end
endmodule
