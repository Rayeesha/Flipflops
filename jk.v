`timescale 1ns / 1ps

module jk(input j,input k,input clk,input clr,output reg q);
always@(posedge clr or negedge clk)
begin
if(clr==1)
q<=0;
else
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
end
endmodule
module tb();
reg j,k,clk,clr;
wire q;
jk j1(j,k,clk,clr,q);
initial
begin
clr=1;clk=0;j=0;k=0;
#10 clr=0;j=0;k=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;
#10 $finish;
end
always #5 clk=~clk;
endmodule
