module half_adder(
    input A, B,
    output sum, carry
);
    assign sum = A ^ B;     
    assign carry = A & B;    
endmodule
module full_subtractor(
    input A, B, Bin,          
    output D, Bout            
);
    wire sum1, borrow1, borrow2;
    half_adder HA1 (
        .A(A),
        .B(~B),              
        .sum(sum1),
        .carry(borrow1)     
    );
    half_adder HA2 (
        .A(sum1),
        .B(Bin),
        .sum(D),            
        .carry(borrow2)      
    );
    assign Bout = borrow1 | borrow2;  

endmodule
