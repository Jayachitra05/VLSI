
/*12. Write a snippet in SV to insert one queue into another queue. (Do it with & without using
array methods)*/

module insert_queue_with_methods;
  int queue1[$] = '{1, 2, 3, 4};
  int queue2[$] = '{5, 6, 7, 8};

  initial begin
    foreach(queue2[i]) begin
      queue1.push_back(queue2[i]);
    end
    $display("Queue after insertion with push_back: %p", queue1);
  end
endmodule

module insert_queue_without_methods;
  int queue1[$] = '{1, 2, 3, 4};
  int queue2[$] = '{5, 6, 7, 8};

  initial begin
    queue1 = {queue1, queue2};
    $display("Queue after insertion without methods: %p", queue1);
  end
endmodule

/*Output
Queue after insertion with push_back: '{1, 2, 3, 4, 5, 6, 7, 8}
Queue after insertion without methods: '{1, 2, 3, 4, 5, 6, 7, 8}*/
