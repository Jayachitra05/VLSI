//16.) i) Predict the output for the following exercises

class base;
	static int i;
	static function get();
		int a;
		a++;
		i++;
  		$display("a=%0d",a);
  		$display("i=%0d",i);
	endfunction
endclass

base b1_h,b2_h;

module test();
	initial begin
		b1_h.get();
		b1_h.get();
		b2_h.get();
	end
endmodule
/*output
# KERNEL: a=1
# KERNEL: i=1
# KERNEL: a=1
# KERNEL: i=2
# KERNEL: a=1
# KERNEL: i=3
*/
