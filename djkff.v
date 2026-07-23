`timescale 1ns / 1ps

module djkff(input d,input clk,input clr,output q);
jkff j1(d,~d,clk,clr,q);
endmodule
module jkff(input j,input k,input clk, input clr, output reg q);
always @(posedge clr or negedge clk)
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
reg d,clk,clr;
 wire q; 
 djkff a1(d,clk,clr,q); 
 initial 
 begin 
 clk=0;clr=1;d=0; 
 #3 clr=0; 
 #9 d=1; 
 #10 d=0;
 #10 $finish; 
 end 
 always #5 clk=~clk;
 endmodule