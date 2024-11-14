/*18. Write a test bench to test the Associative array data type and its predefined
methods by using the following statements

a. declare a 64-bit integer type sparse array assoc & an index idx
b. initialize idx to 1
c. fill array assoc by 1-bit left shift of idx value in a loop which runs 64
times so that the array is filled as a sparse array
d. use first, next, last, prev methods to get the values of these
elements*/

module test_associative_array;
  int unsigned assoc[int];  
  int idx;
  int key;

  initial begin
    idx = 1;

    for (int i = 0; i < 64; i++) begin
      assoc[idx] = idx;
      idx = idx << 1; 
    end

    if (assoc.first(key)) begin
      $display("Associative Array elements in ascending order:");
      do begin
        $display("Key: %0d, Value: %0d", key, assoc[key]);
      end while (assoc.next(key));
    end

    if (assoc.last(key)) begin
      $display("\nAssociative Array elements in descending order:");
      do begin
        $display("Key: %0d, Value: %0d", key, assoc[key]);
      end while (assoc.prev(key));
    end
  end
endmodule

/*Output
Associative Array elements in ascending order:
Key: -2147483648, Value: 2147483648
Key: 0, Value: 0
Key: 1, Value: 1
Key: 2, Value: 2
Key: 4, Value: 4
Key: 8, Value: 8
Key: 16, Value: 16
Key: 32, Value: 32
Key: 64, Value: 64
Key: 128, Value: 128
Key: 256, Value: 256
Key: 512, Value: 512
Key: 1024, Value: 1024
Key: 2048, Value: 2048
Key: 4096, Value: 4096
Key: 8192, Value: 8192
Key: 16384, Value: 16384
Key: 32768, Value: 32768
Key: 65536, Value: 65536
Key: 131072, Value: 131072
Key: 262144, Value: 262144
Key: 524288, Value: 524288
Key: 1048576, Value: 1048576
Key: 2097152, Value: 2097152
Key: 4194304, Value: 4194304
Key: 8388608, Value: 8388608
Key: 16777216, Value: 16777216
Key: 33554432, Value: 33554432
Key: 67108864, Value: 67108864
Key: 134217728, Value: 134217728
Key: 268435456, Value: 268435456
Key: 536870912, Value: 536870912
Key: 1073741824, Value: 1073741824

Associative Array elements in descending order:
Key: 1073741824, Value: 1073741824
Key: 536870912, Value: 536870912
Key: 268435456, Value: 268435456
Key: 134217728, Value: 134217728
Key: 67108864, Value: 67108864
Key: 33554432, Value: 33554432
Key: 16777216, Value: 16777216
Key: 8388608, Value: 8388608
Key: 4194304, Value: 4194304
Key: 2097152, Value: 2097152
Key: 1048576, Value: 1048576
Key: 524288, Value: 524288
Key: 262144, Value: 262144
Key: 131072, Value: 131072
Key: 65536, Value: 65536
Key: 32768, Value: 32768
Key: 16384, Value: 16384
Key: 8192, Value: 8192
Key: 4096, Value: 4096
Key: 2048, Value: 2048
Key: 1024, Value: 1024
Key: 512, Value: 512
Key: 256, Value: 256
Key: 128, Value: 128
Key: 64, Value: 64
Key: 32, Value: 32
Key: 16, Value: 16
Key: 8, Value: 8
Key: 4, Value: 4
Key: 2, Value: 2
Key: 1, Value: 1
Key: 0, Value: 0
Key: -2147483648, Value: 2147483648*/
