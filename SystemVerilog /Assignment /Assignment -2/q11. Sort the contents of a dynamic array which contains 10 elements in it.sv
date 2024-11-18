/*11. Sort the contents of a dynamic array which contains 10 elements in it.module sort_dynamic_array();*/
module dyn_arr;    
int data[10];  
    initial begin  
        data = '{34, 12, 56, 2, 89, 23, 15, 77, 43, 9};
        data.sort(); 
        $display("Sorted Array: ");
        foreach (data[i]) begin
            $display("data[%0d] = %0d", i, data[i]);
        end
    end
endmodule
/*output
# KERNEL: data[0] = 2
# KERNEL: data[1] = 9
# KERNEL: data[2] = 12
# KERNEL: data[3] = 15
# KERNEL: data[4] = 23
# KERNEL: data[5] = 34
# KERNEL: data[6] = 43
# KERNEL: data[7] = 56
# KERNEL: data[8] = 77
# KERNEL: data[9] = 89
# KERNEL: Simulation has finished.*/
module sort_dynamic_array();
    int data[10]; 
    initial begin
        data = '{34, 12, 56, 2, 89, 23, 15, 77, 43, 9};
        data.sort(); 
        $display("Sorted Array: {%0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d}", 
            data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7], data[8], data[9]);
    end
endmodule
/*output

# KERNEL: Sorted Array: {2, 9, 12, 15, 23, 34, 43, 56, 77, 89}*/


