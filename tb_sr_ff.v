`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2023 08:58:22 PM
// Design Name: 
// Module Name: tb_sr_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_sr_ff;

        reg clk,s,r;
        wire q,qb;
        integer i;
        
        sr_ff dut(.clk(clk),.s(s),.r(r),.q(q),.qb(qb));
 
        
        initial 
        begin
        clk = 0;
        forever #5 clk = ~clk;
        end
        
        initial
        begin
        for(i = 0; i < 4; i = i +1)
            begin
            {s,r} = i;
            #30;
            end
        end
        
        initial
        begin
            $monitor("s = %b, r = %b, q = %b, qb = %b",s,r,q,qb);
            #120;
            $finish;
        end
                
endmodule
