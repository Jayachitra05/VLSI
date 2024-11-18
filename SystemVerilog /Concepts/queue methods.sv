module queue_example;
  int que_eg[$];  

  initial begin
    que_eg = {10, 20, 30, 50, 60};  
    $display("Initial queue: %p", que_eg);

    $display("Queue size: %0d", que_eg.size());

    que_eg.insert(que_eg.size() / 2, 99);  
    que_eg.insert(que_eg.size(), 88);      
    $display("Queue after insertion: %p", que_eg);

    que_eg.delete(que_eg.size() - 2);      
    $display("Queue after deletion: %p", que_eg);

    que_eg.pop_front();                  
    $display("Queue after pop_front: %p", que_eg);
    que_eg.pop_back();                    
    $display("Queue after pop_back: %p", que_eg);

    que_eg.push_front(5);                  
    que_eg.push_back(55);                  
    $display("Queue after push_front and push_back: %p", que_eg);
  end
endmodule
