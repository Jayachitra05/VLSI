module mux_2to1 (
  input wire A,    
  input wire B,   
  input wire S,    
  output wire Y    
);

  wire notS;       
  wire andA, andB; 
  not  (notS, S);        
  and  (andA, A, notS);   
  and  (andB, B, S);      
  or   (Y, andA, andB);   
endmodule
