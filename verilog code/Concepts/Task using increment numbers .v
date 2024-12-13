module increment_task_example; 
  task increment(input integer incr);
   integer i = 1;  
    i = i + incr; 
    $display("Result of increment = %0d", i);
  endtask

  initial begin
    increment(1);  
    increment(2);  
    increment(3); 
  end
  
endmodule
