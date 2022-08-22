`include "KGP.v"
`include "KGPM.v"

module inarray(r1,r2,sum);
input[15:0] r1;
input[15:0] r2;
wire[1:0] w1 [16:0];

assign w1[0]=2'b00;

KGP a0(r1[0],r2[0],w1[1]);
KGP a1(r1[1],r2[1],w1[2]);
KGP a2(r1[2],r2[2],w1[3]);
KGP a3(r1[3],r2[3],w1[4]);
KGP a4(r1[4],r2[4],w1[5]);
KGP a5(r1[5],r2[5],w1[6]);
KGP a6(r1[6],r2[6],w1[7]);
KGP a7(r1[7],r2[7],w1[8]);
KGP a8(r1[8],r2[8],w1[9]);
KGP a9(r1[9],r2[9],w1[10]);
KGP a10(r1[10],r2[10],w1[11]);
KGP a11(r1[11],r2[11],w1[12]);
KGP a12(r1[12],r2[12],w1[13]);
KGP a13(r1[13],r2[13],w1[14]);
KGP a14(r1[14],r2[14],w1[15]);
KGP a15(r1[15],r2[15],w1[16]);


wire [1:0] w2 [16:0];
assign w2[0]=2'b00;

KGPM b1(w1[16],w1[15],w2[16]);
KGPM b2(w1[15],w1[14],w2[15]);
KGPM b3(w1[14],w1[13],w2[14]);
KGPM b4(w1[13],w1[12],w2[13]);
KGPM b5(w1[12],w1[11],w2[12]);
KGPM b6(w1[11],w1[10],w2[11]);
KGPM b7(w1[10],w1[9],w2[10]);
KGPM b8(w1[9],w1[8],w2[9]);
KGPM b9(w1[8],w1[7],w2[8]);
KGPM b10(w1[7],w1[6],w2[7]);
KGPM b11(w1[6],w1[5],w2[6]);
KGPM b12(w1[5],w1[4],w2[5]);
KGPM b13(w1[4],w1[3],w2[4]);
KGPM b14(w1[3],w1[2],w2[3]);
KGPM b15(w1[2],w1[1],w2[2]);
KGPM b16(w1[1],w1[0],w2[1]);

wire[1:0] w3 [16:0];
assign w3[0]=w2[0];
assign w3[1]=w2[1];

KGPM c1(w2[16],w2[14],w3[16]);
KGPM c2(w2[15],w2[13],w3[15]);
KGPM c3(w2[14],w2[12],w3[14]);
KGPM c4(w2[13],w2[11],w3[13]);
KGPM c5(w2[12],w2[10],w3[12]);
KGPM c6(w2[11],w2[9],w3[11]);
KGPM c7(w2[10],w2[8],w3[10]);
KGPM c8(w2[9],w2[7],w3[9]);
KGPM c9(w2[8],w2[6],w3[8]);
KGPM c10(w2[7],w2[5],w3[7]);
KGPM c11(w2[6],w2[4],w3[6]);
KGPM c12(w2[5],w2[3],w3[5]);
KGPM c13(w2[4],w2[2],w3[4]);
KGPM c14(w2[3],w2[1],w3[3]);
KGPM c15(w2[2],w2[0],w3[2]);

wire[1:0] w4 [16:0];
assign w4[0]=w3[0];
assign w4[1]=w3[1];
assign w4[2]=w3[2];
assign w4[3]=w3[3];

KGPM d1(w3[16],w3[12],w4[16]);
KGPM d2(w3[15],w3[11],w4[15]);
KGPM d3(w3[14],w3[10],w4[14]);
KGPM d4(w3[13],w3[9],w4[13]);
KGPM d5(w3[12],w3[8],w4[12]);
KGPM d6(w3[11],w3[7],w4[11]);
KGPM d7(w3[10],w3[6],w4[10]);
KGPM d8(w3[9],w3[5],w4[9]);
KGPM d9(w3[8],w3[4],w4[8]);
KGPM d10(w3[7],w3[3],w4[7]);
KGPM d11(w3[6],w3[2],w4[6]);
KGPM d12(w3[5],w3[1],w4[5]);
KGPM d13(w3[4],w3[0],w4[4]);


wire[1:0] w5 [16:0];
assign w5[0]=w4[0];
assign w5[1]=w4[1];
assign w5[2]=w4[2];
assign w5[3]=w4[3];
assign w5[4]=w4[4];
assign w5[5]=w4[5];
assign w5[6]=w4[6];
assign w5[7]=w4[7];

KGPM e1(w4[16],w4[8],w5[16]);
KGPM e2(w4[15],w4[7],w5[15]);
KGPM e3(w4[14],w4[6],w5[14]);
KGPM e4(w4[13],w4[5],w5[13]);
KGPM e5(w4[12],w4[4],w5[12]);
KGPM e6(w4[11],w4[3],w5[11]);
KGPM e7(w4[10],w4[2],w5[10]);
KGPM e8(w4[9],w4[1],w5[9]);
KGPM e9(w4[8],w4[0],w5[8]);

wire[1:0] w6 [16:0];
KGPM f1(w5[16],w5[0],w6[16]);

output[16:0] sum;
assign sum[0]=  w5[0][1]^r1[0]^r2[0];
assign sum[1]=  w5[1][1]^r1[1]^r2[1];
assign sum[2]=  w5[2][1]^r1[2]^r2[2];
assign sum[3]=  w5[3][1]^r1[3]^r2[3];
assign sum[4]=  w5[4][1]^r1[4]^r2[4];
assign sum[5]=  w5[5][1]^r1[5]^r2[5];
assign sum[6]=  w5[6][1]^r1[6]^r2[6];
assign sum[7]=  w5[7][1]^r1[7]^r2[7];
assign sum[8]=  w5[8][1]^r1[8]^r2[8];
assign sum[9]=  w5[9][1]^r1[9]^r2[9];
assign sum[10]= w5[10][1]^r1[10]^r2[10];
assign sum[11]= w5[11][1]^r1[11]^r2[11];
assign sum[12]= w5[12][1]^r1[12]^r2[12];
assign sum[13]= w5[13][1]^r1[13]^r2[13];
assign sum[14]= w5[14][1]^r1[14]^r2[14];
assign sum[15]= w5[15][1]^r1[15]^r2[15];
assign sum[16]= w6[16][1];

endmodule
