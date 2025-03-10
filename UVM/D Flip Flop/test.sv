class dff_test extends uvm_test;
  `uvm_component_utils(dff_test)
  dff_environment env;
  dff_sequence seq;
  
  function new(string name = "dff_test",uvm_component parent);
    super.new(name,parent);
    `uvm_info("test","constructor",UVM_MEDIUM);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = dff_environment::type_id::create("env",this);
    seq = dff_sequence::type_id::create("seq",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("test class","connect phase",UVM_MEDIUM);
  endfunction
  virtual function void end_of_elaboration();
    `uvm_info("test class","elob phase",UVM_MEDIUM)
    print();
  endfunction
  task run_phase (uvm_phase phase);
    `uvm_info("test class","run_phase",UVM_MEDIUM)
    phase.raise_objection(this);
    seq.start(env.agent.seqr);
    phase.drop_objection(this);
  endtask
endclass
    
    
