/*3. write a code for dynamic array... give the value of array using foreach.. display the size..
shuffle the array elements...*/
module dynamic_array_example;
  int dyn_array[];

  initial begin
    dyn_array = new[5];

    foreach (dyn_array[i]) begin
      dyn_array[i] = i + 10;  
    end

    $display("Dynamic Array elements:");
    foreach (dyn_array[i]) begin
      $display("dyn_array[%0d] = %0d", i, dyn_array[i]);
    end
    $display("Size of dynamic array: %0d", dyn_array.size());

    dyn_array.shuffle();
    $display("Shuffled Dynamic Array elements:");
    foreach (dyn_array[i]) begin
      $display("dyn_array[%0d] = %0d", i, dyn_array[i]);
    end
  end
endmodule
/*output
# KERNEL: Dynamic Array elements:
# KERNEL: dyn_array[0] = 0
# KERNEL: dyn_array[1] = 5
# KERNEL: dyn_array[2] = 10
# KERNEL: dyn_array[3] = 15
# KERNEL: dyn_array[4] = 20
# KERNEL: Size of dynamic array: 5
# KERNEL: Shuffled Dynamic Array elements:
# KERNEL: dyn_array[0] = 20
# KERNEL: dyn_array[1] = 5
# KERNEL: dyn_array[2] = 0
# KERNEL: dyn_array[3] = 10
# KERNEL: dyn_array[4] = 15
# KERNEL: Simulation has finished*/
