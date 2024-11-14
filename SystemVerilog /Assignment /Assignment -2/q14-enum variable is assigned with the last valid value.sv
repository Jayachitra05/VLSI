
/*14. What happens when an enum variable is assigned with the last valid value and the next
method is used to do the next assignment?*/

module enum_wraparound_example;
  typedef enum {RED = 2, GREEN = 3, BLUE = 4} color_t;
  color_t color = BLUE;
  initial begin
    $display("Initial color: %s", color.name()); 
    color = color.next;
  $display("After next on last enum value: %s", color.name());
  end
endmodule

/*Output
Initial color: BLUE
After next on last enum value: RED*/
