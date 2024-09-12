`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIT AGARTALA
// Engineer: Pre Final Year Student
// 
// Create Date: 09/12/2024 11:31:51 AM
// Design Name: 
// Module Name: FullAdder_HA
// Project Name: Full Adder Using Half Adder
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


module FullAdder_HA(X,Y,Z,S,C);
    // Port Declaration
    input X,Y,Z;     // 1-bit Input pin
    output S,C;    // S: Sum, C: Carry
    wire w1,w2,w3;
    // Instantiate 1st Half Adder Module
    Half_Adder H0(
    .x(X),
    .y(Y),
    .S(w1),           // w1=X xor Y
    .C(w2)            // w2=X and Y
    );
    // Instantiate 2nd Half Adder Module
    Half_Adder H1(
        .x(w1),         // w1=X xor Y
        .y(Z),          // Z : Carry bit
        .S(S),          // S=(X xor Y) xor Z
        .C(w3)        // w3=Z and (X xor Y)
        );
    assign C=w2 || w3;   // Output Carry bit
endmodule
