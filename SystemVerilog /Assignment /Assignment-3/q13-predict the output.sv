class base;
int i;
static function get();
static int a;
a++;
$display(a);
endfunction
endclass
base b1_h,b2_h;
module test();
initial
begin
b1_h.get();
b1_h.get();
b2_h.get();
end
endmodule
/*output
# KERNEL:           1
# KERNEL:           2
# KERNEL:           3*/
