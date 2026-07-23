`timescale 1ns / 1ps

module tjkff(input t,input clk,input clr,output q);
jk j1(t,t,clk,clr,q);
endmodule
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
reg t,clk,clr;
wire q;
tjkff a1(t,clk,clr,q);
initial
begin
clk=0;clr=1;t=0;
#3 clr=0;
#9 t=1;
#10 $finish;
end
always #5 clk=~clk;
endmodule
