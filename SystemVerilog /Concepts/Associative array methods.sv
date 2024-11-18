module ass_array;
  longint assoc[int];
  int idx;
  initial begin
    idx = 1;
    repeat(64) begin
      assoc[idx] = idx;
      idx = idx << 1;
    end
    if(assoc.first(idx))
      $display("First idx and value = %0d, %0d",idx, assoc[idx]);
    if(assoc.next(idx))
      $display("Next idx and value = %0d, %0d",idx, assoc[idx]);
    if(assoc.prev(idx))
      $display("Previous idx and value = %0d, %0d",idx, assoc[idx]);
    if(assoc.last(idx))
      $display("Last idx and value = %0d, %0d",idx, assoc[idx]);
  end
endmodule
    
