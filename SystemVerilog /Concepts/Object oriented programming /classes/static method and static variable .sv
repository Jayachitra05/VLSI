class transaction;
  static int s_id;
  int id;
  
  static function incr_s_id();
    s_id++;
  endfunction
  
  function void incr_id();
    s_id++;
    id++;
  endfunction
endclass

module class_eg;
  transaction tr[5];
  
  initial begin
    foreach(tr[i]) begin
      tr[i] = new();
      tr[i].incr_s_id;
      $display("On calling incr_s_id :Value of s_id = %0h, id = %0h",tr[i].s_id, tr[i].id);
    end
    
    tr[0].s_id = 0;
    
    foreach(tr[i]) begin
      tr[i].incr_id;
      $display("On calling incr_id : Value of s_id = %0h, id = %0h",tr[i].s_id,tr[i].id);
    end
  end
  
endmodule
/*output
On calling incr_s_id :Value of s_id = 1, id = 0
On calling incr_s_id :Value of s_id = 2, id = 0
On calling incr_s_id :Value of s_id = 3, id = 0
On calling incr_s_id :Value of s_id = 4, id = 0
On calling incr_s_id :Value of s_id = 5, id = 0
On calling incr_id : Value of s_id = 1, id = 1
On calling incr_id : Value of s_id = 2, id = 1
On calling incr_id : Value of s_id = 3, id = 1
On calling incr_id : Value of s_id = 4, id = 1
On calling incr_id : Value of s_id = 5, id = 1*/
