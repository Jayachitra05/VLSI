module tb;
  reg [3:0]a,b;
  wire x,y,z;
  comparator dut(a,b,x,y,z);
  initial begin    $monitor("a=%0h,b=%0h,x=%0h,y=%0h,z=%0h",a,b,x,y,z);
    repeat(5)begin
      a=$random;
    #2 b=$random;  
    end
  end
endmodule
