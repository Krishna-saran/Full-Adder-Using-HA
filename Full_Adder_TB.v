`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIT AGARTALA
// Engineer: Pre-Final Year Student
// 
// Create Date: 09/12/2024 07:00:16 PM
// Design Name: Full Adder Test Bench
// Module Name: Full_Adder_TB
// Project Name: Combinational Design
// Target Devices: 
// Tool Versions: Vivado 2018.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Adder_TB();
    // Declaration of Input-Output Ports
    reg A,B,Cin;      // A,B: 1-bit Input, Cin: Input Carry(Intially)
    wire S,C;        // S: Sum, C: Carry
    // Instantiate The Full Adder Module
    FullAdder_HA F0(
    .X(A),
    .Y(B),
    .Z(Cin),
    .S(S),
    .C(C)
    );
    // Test Sequence
    initial begin
         // Initialize Inputs
        A=1'b0;
        B=1'b0;
        Cin=1'b0;
        #10                                  //   Truth Table For Full Adder
        A=1'b0;                             //   INPUTS               OUTPUTS
        B=1'b0;                             //  A    B    Cin        S        C
        Cin=1'b1;                          //   0    0     0         0        0
        #10                                //   0    0     1         1        0
        A=1'b0;                           //    0    1     0         1        0
        B=1'b1;                           //    0    1     1         0        1
        Cin=1'b0;                         //    1    0     0         1        0
        #10                              //     1    0     1         0        1
        A=1'b0;                          //     1    1     0         0        1                                      
        B=1'b1;                          //     1    1     1         1        1 
        Cin=1'b1;
        #10 
        A=1'b1;  
        B=1'b0;  
        Cin=1'b0;
        #10      
        A=1'b1;  
        B=1'b0;  
        Cin=1'b1;
        #10
        A=1'b1;   
        B=1'b1;   
        Cin=1'b0;
        #10      
        A=1'b1;  
        B=1'b1;  
        Cin=1'b1;
        #10
        $finish();        // End simulation
        end  
endmodule
