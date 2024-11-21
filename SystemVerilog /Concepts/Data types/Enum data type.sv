module enum_example;
    typedef enum {
        RED,      
        YELLOW,  
        GREEN     
    } traffic_light_t;
    traffic_light_t light;
    initial begin
        light = RED;
        $display("Current state: %s (value = %0d)", light.name(), light.num());
        $display("First state: %s", light.first().name());
        $display("Last state: %s", light.last().name());
        $display("All states:");
        for (light = light.first(); light <= light.last(); light++) begin
          $display("- %s (for value = %0d)", light.name(), light.num());
        end
    end
endmodule
