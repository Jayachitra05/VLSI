module for_example;
  integer cnt;
  initial begin
    for(cnt = 0; cnt < 10; cnt = cnt + 1)
      begin
      $display("cnt = %0d", cnt);
      end 
  end
endmodule
/* output
# KERNEL: cnt = 0
# KERNEL: cnt = 1
# KERNEL: cnt = 2
# KERNEL: cnt = 3
# KERNEL: cnt = 4
# KERNEL: cnt = 5
# KERNEL: cnt = 6
# KERNEL: cnt = 7
# KERNEL: cnt = 8
# KERNEL: cnt = 9*/
