module half_adder(
    input A, B,
    output sum, carry
);
    assign sum = A ^ B;     
    assign carry = A & B;    
endmodule
module full_adder(
    input A, B, Cin,         
    output sum, Cout         
);
    wire sum1, carry1, carry2;  
    half_adder HA1 (
        .A(A),
        .B(B),
        .sum(sum1),
        .carry(carry1)       
    );
    half_adder HA2 (
        .A(sum1),
        .B(Cin),
        .sum(sum),          
        .carry(carry2)       
    );
    assign Cout = carry1 | carry2;  
endmodule
