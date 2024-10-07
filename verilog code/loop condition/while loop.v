module while_example;  
  int count;
  initial begin
    while(count<10) begin 
      $display("Value of count = %0d", count);
      count++;
    end
  end
endmodule
/* output
# KERNEL:Value of count = 0
# KERNEL: Value of count = 1
# KERNEL: Value of count = 2
# KERNEL: Value of count = 3
# KERNEL: Value of count = 4
# KERNEL: Value of count = 5
# KERNEL: Value of count = 6
# KERNEL: Value of count = 7
# KERNEL: Value of count = 8
# KERNEL: Value of count = 9*/
