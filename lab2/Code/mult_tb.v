`include "csa.v"
module multout;
reg [15:0] abit;
reg[15:0] bbit;
wire[32:0] sbit;

main m1(.a(abit),.b(bbit),.s(sbit));



initial

begin
$dumpfile("testmult.vcd");
$dumpvars(0,multout);
$display(" a                       b                           s");
$monitor(" %16b  %d,%16b  %d,%33b   %d",abit,abit,bbit,bbit,sbit,sbit);
abit=16'b1011000000000001;
bbit=16'b1010101010101001;
#10
abit=16'b1011000000000001;
bbit=16'b1010101010101001;
#10
abit=16'b1011000000000001;
bbit=16'b1010101010101001;
#10
abit=16'b1111111111111111;
bbit=16'b1111111111111111;
#10

 $finish;

end
//always #255 abit[15]=~abit[15];
//always #128 abit[14]=~abit[14];
//always #64 abit[10]=~abit[10];
//always #32 abit[9]=~abit[9];
//always #16 abit[6]=~abit[6];
//always #8 abit[3]=~abit[3];
endmodule 
