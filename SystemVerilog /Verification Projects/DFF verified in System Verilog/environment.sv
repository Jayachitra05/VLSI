`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class environment;
  virtual operation vintf;
  mailbox mail;
  generator gen;
  driver driv;
  monitor mon;
  
  function new(virtual operation vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task memory;
    mail = new();
    gen = new(mail);
    driv = new(vintf, mail);
    mon = new(vintf, mail);
  endtask
  
  task run;
    fork 
      gen.gene;
      driv.drive;
      mon.monit;
    join
  endtask
endclass
