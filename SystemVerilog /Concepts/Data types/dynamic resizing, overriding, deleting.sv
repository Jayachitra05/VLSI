module dynamic_array_eg;
  int arr[];
  initial begin
    arr=new[5];
    arr = '{5,1,4,7,9};
    foreach(arr[i]) begin
      $display("arr[i] = %0d",arr[i]);
    end
    $display("array size = %0d",arr.size());
    arr = new[6](arr);
    foreach(arr[i]) begin
      $display("arr[i] = %0d",arr[i]);
    end
    $display("array size = %0d",arr.size());
    arr = new[8];
    foreach(arr[i]) begin
      $display("arr[i] = %0d",arr[i]);
    end
    arr.delete();
    $display("deleted array size = %0d",arr.size());
  end
endmodule
    
    
    
    
    
  
