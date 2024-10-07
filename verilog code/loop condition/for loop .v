module for_example;
  int cnt;
  initial begin
    for (;;) begin
      $display("cnt = %0d", cnt);
      if(cnt == 10) break;
      cnt++;
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
# KERNEL: cnt = 9
# KERNEL: cnt = 10*/
