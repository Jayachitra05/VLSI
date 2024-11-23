class transaction;
  bit [31:0] data;
  int id;
endclass

module class_eg;
  transaction tr[];
  initial begin
    tr = new[5];
    foreach(tr[i]) begin
      tr[i] = new();
      tr[i].data = i*i;
      tr[i].id = i+1;
      $display("tr[%0d] data = %0d, id = %0d",tr[i],tr[i].data, tr[i].id);
    end
  end
endmodule
/*output
tr[3] data = 0, id = 1
tr[4] data = 1, id = 2
tr[5] data = 4, id = 3
tr[6] data = 9, id = 4
tr[7] data = 16, id = 5*/
