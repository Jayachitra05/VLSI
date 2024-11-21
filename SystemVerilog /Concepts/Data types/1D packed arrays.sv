module single_dimensional_packed_array;
  bit [7:0] a;
  initial begin
    a=8'hA2; 
    for(int i=0; i<$size(a); i++) begin
      $display ("a[%0d] = %b", i, a[i]);
    end
  end
endmodule
/*output
# KERNEL: a[0] = 0
# KERNEL: a[1] = 1
# KERNEL: a[2] = 0
# KERNEL: a[3] = 0
# KERNEL: a[4] = 0
# KERNEL: a[5] = 1
# KERNEL: a[6] = 0
# KERNEL: a[7] = 1*/
