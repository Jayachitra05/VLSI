module array_example;
  int array [2:0][3:0]= '{'{1, 2, 3, 4},
                           '{5, 6, 7, 8},
                           '{9, 10, 11, 12}
                          };  
  initial begin
    foreach (array[i,j]) begin
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end
endmodule
/*output
# KERNEL: array[2][3] = 1
# KERNEL: array[2][2] = 2
# KERNEL: array[2][1] = 3
# KERNEL: array[2][0] = 4
# KERNEL: array[1][3] = 5
# KERNEL: array[1][2] = 6
# KERNEL: array[1][1] = 7
# KERNEL: array[1][0] = 8
# KERNEL: array[0][3] = 9
# KERNEL: array[0][2] = 10
# KERNEL: array[0][1] = 11
# KERNEL: array[0][0] = 12*/
