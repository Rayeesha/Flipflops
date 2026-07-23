`timescale 1ns / 1ps

module dff(input d,input clk,input clr,output reg q);
always@(posedge clr or negedge clk)
begin
if(clr==1)
q<=0;
else
q<=d;
end
endmodule
module tb();
reg d,clk,clr;
wire q;
dff d1(d,clk,clr,q);
initial
begin
clr=1;d=0;clk=0;
#3 clr=0;
#9 d=1;
#10 d=0;
#10 $finish;
end
always #5 clk=~clk;
endmodule