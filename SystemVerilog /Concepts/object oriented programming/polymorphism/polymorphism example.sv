Declare a class "BaseClass" use a virtual task "name" inside it. Declare 6 Derived class for the class "BaseClass". Have the task "name" inside all derived class. Each task must display the name of an silicon craft Student name. Using the BaseClass object try to display all the student name declared inside the derived class method.
class baseClass;
  string std_name;
  
  virtual task name();
    $display("baseclass name : %s",std_name);
  endtask
endclass

class student_a extends baseClass;
  task name();
    $display("Silicon Craft student_a name : %s",std_name);
  endtask
endclass

class student_b extends baseClass;
  task name();
    $display("Silicon Craft student_b name : %s",std_name);
  endtask
endclass

class student_c extends baseClass;
  task name();
    $display("Silicon Craft student_c name : %s",std_name);
  endtask
endclass

class student_d extends baseClass;
  task name();
    $display("Silicon Craft student_d name : %s",std_name);
  endtask
endclass

class student_e extends baseClass;
  task name();
    $display("Silicon Craft student_e name : %s",std_name);
  endtask
endclass

class student_f extends baseClass;
  task name();
    $display("Silicon Craft student_f name : %s",std_name);
  endtask
endclass

module student_names;
  initial begin
    
    baseClass p_a, p_b, p_c, p_d, p_e, p_f;
    
    student_a s_a = new();
    student_b s_b = new();
    student_c s_c = new();
    student_d s_d = new();
    student_e s_e = new();
    student_f s_f = new();
    
    s_a.std_name = "Gokul"; 
    s_b.std_name = "Gowtham";
    s_c.std_name = "Jayachitra";
    s_d.std_name = "Lathikashree";
    s_e.std_name = "Mano Bala";
    s_f.std_name = "Praveen Kumar";
    
    p_a = s_a;
    p_b = s_b;
    p_c = s_c;    
    p_d = s_d;
    p_e = s_e;
    p_f = s_f;
    
    p_a.name();
    p_b.name();
    p_c.name();
    p_d.name();
    p_e.name();
    p_f.name();
  end
endmodule
/*output
# KERNEL: Silicon Craft student_a name : Gokul
# KERNEL: Silicon Craft student_b name : Gowtham
# KERNEL: Silicon Craft student_c name : Jayachitra
# KERNEL: Silicon Craft student_d name : Lathikashree
# KERNEL: Silicon Craft student_e name : Mano Bala
# KERNEL: Silicon Craft student_f name : Praveen Kumar*/
