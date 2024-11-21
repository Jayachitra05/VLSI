
module tb;
  string firstname = "Jaya";
  string lastname  = "Chitra";
  initial begin
    if (firstname == lastname)
      $display ("firstname=%s is EQUAL to lastname=%s", firstname, lastname);
    if (firstname != lastname)
      $display ("firstname=%s is NOT EQUAL to lastname=%s", firstname, lastname);
    if (firstname < lastname)
      $display ("firstname=%s is LESS THAN lastname=%s", firstname, lastname);
    if (firstname > lastname)
      $display ("firstname=%s is GREATER THAN lastname=%s", firstname, lastname);
    $display ("Full Name = %s", {firstname, " ", lastname});
    $display ("%s", {3{firstname}});
    $display ("firstname[2]=%s lastname[2]=%s", firstname[2], lastname[2]);
  end
endmodule
