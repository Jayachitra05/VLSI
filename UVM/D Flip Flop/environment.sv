class dff_environment extends uvm_env;
  `uvm_component_utils(dff_environment)
  
  dff_agent agent;
  dff_scoreboard scb;
  
  function new(string name = "dff_environment",uvm_component parent);
    super.new(name,parent);
    `uvm_info("environment class","constructor",UVM_HIGH);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    agent = dff_agent::type_id::create("agent",this);
    scb = dff_scoreboard::type_id::create("scb",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("environment class","connect phase",UVM_MEDIUM);
    agent.mon.item_collected_port.connect(scb.item_collected_export);
  endfunction
endclass
  
