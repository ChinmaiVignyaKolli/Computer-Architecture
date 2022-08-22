`include"Wallace.v"
module prod;
reg [15:0] abit;
reg[15:0] bbit;
wire[32:0] sbit;

wallace w1(.a(abit),.b(bbit),.s(sbit));



initial

begin
$dumpfile("WTM_tb.vcd");
$dumpvars(0,prod);
$display(" A                       B                           Product");
$monitor(" %16b %d ,%16b  %d,%33b  %d",abit,abit,bbit,bbit,sbit,sbit);
abit=16'b0000000000000010;
bbit=16'b0000000000000010;
#10
abit=16'b0000000000000100;
bbit=16'b0000000000000010;
#10
abit=16'b0000000000000101;
bbit=16'b0000000000000010;
#10
abit=16'b1111111111111111;
bbit=16'b1111111111111111;
#10
abit=16'b1111111111111111;
bbit=16'b1111111111111111;
#10
abit=16'b0010000000000000;
bbit=16'b0010000000000000;
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
