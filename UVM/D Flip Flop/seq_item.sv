class dff_seq_item extends uvm_sequence_item;
  `uvm_object_utils(dff_seq_item)

  rand logic d;
  logic rst;
  logic q;
  
  function new(string name = "dff_seq_item");
    super.new(name);
    `uvm_info("sequence item class","constructor",UVM_MEDIUM)
  endfunction
  
endclass
