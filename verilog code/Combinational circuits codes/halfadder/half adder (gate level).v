module half_adder(
    input wire a,
    input wire b,
    output wire s,
    output wire c
);
    xor (s, a, b);   
    and (c, a, b); 
endmodule
