
class base;
static int i;
static function static get();
int a;
a++;
i++;
$display(a);
$display(i);
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
# KERNEL:           1
# KERNEL:           2
# KERNEL:           2
# KERNEL:           3
# KERNEL:           3*/
