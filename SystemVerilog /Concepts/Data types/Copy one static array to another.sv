module array_copy_test;
  logic [7:0]arr1[4:0];
  logic [7:0]arr2[4:0];
  initial begin
    arr1 = '{8'h00,8'h01,8'h02,8'h03,8'h04};
    for (int i=0; i<5; i++) begin
      arr2[i] = arr1[i];
    end
    $display("arr2 = %p", arr2);
  end
endmodule
/*output
# KERNEL: arr2 = '{0, 1, 2, 3, 4}*/
