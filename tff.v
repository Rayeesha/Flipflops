`timescale 1ns / 1ps

module tff(input t,input clk,input clr,output reg q);
always@(posedge clr or negedge clk)
begin
if(clr==1)
q<=0;
else
begin
if(t)
q<=~q;
else 
q<=q;
end
end
endmodule
module tb();
reg t,clk,clr;
wire q;
tff t1(t,clk,clr,q);
initial
begin
clk=0;
clr=1;
t=0;
#3 clr=0;
#9 t=1;
#10 t=0;
#10 $finish;
end
always #5 clk=~clk;
endmodule
