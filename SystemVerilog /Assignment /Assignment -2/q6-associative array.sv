/*6. Write a associative array example .explain its functionality.*/

module associative_array_example;
  int assoc_array[string];

  initial begin
    assoc_array["apple"] = 10;
    assoc_array["banana"] = 20;
    assoc_array["cherry"] = 30;

    foreach (assoc_array[key]) begin
      $display("assoc_array[%s] = %0d", key, assoc_array[key]);
    end

    $display("Value associated with 'banana': %0d", assoc_array["banana"]);

    if (assoc_array.exists("cherry")) begin
      $display("'cherry' exists in the array with value: %0d", assoc_array["cherry"]);
    end else begin
      $display("'cherry' does not exist in the array.");
    end

    assoc_array.delete("apple");
    $display("After deleting 'apple':");
    foreach (assoc_array[key]) begin
      $display("assoc_array[%s] = %0d", key, assoc_array[key]);
    end
  end
endmodule
/*Output
assoc_array[apple] = 10
assoc_array[banana] = 20
assoc_array[cherry] = 30
Value associated with 'banana': 20
'cherry' exists in the array with value: 30
After deleting 'apple':
assoc_array[banana] = 20
assoc_array[cherry] = 30*/
