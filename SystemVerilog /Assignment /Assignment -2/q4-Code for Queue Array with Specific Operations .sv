/*4. write a code for queue array with 4 elements ... insert 1in the 1st index.. delete element in 3rd
index... insert 9 as the last element... shuffle, reverse the elements*/

module queue_operations;
  int que_eg[$];

  initial begin
    que_eg = {2, 4, 6, 8};
    $display("Initial queue: %p", que_eg);

    que_eg.insert(0, 1);
    $display("Queue after inserting 1 at the first index: %p", que_eg);

    que_eg.delete(2);
    $display("Queue after deleting element at the third index: %p", que_eg);

    que_eg.push_back(9);
    $display("Queue after inserting 9 as the last element: %p", que_eg);

    que_eg.shuffle();
    $display("Queue after shuffling: %p", que_eg);

    que_eg.reverse();
    $display("Queue after reversing: %p", que_eg);
  end
endmodule

/*Output
Initial queue: '{2, 4, 6, 8}
Queue after inserting 1 at the first index: '{1, 2, 4, 6, 8}
Queue after deleting element at the third index: '{1, 2, 6, 8}
Queue after inserting 9 as the last element: '{1, 2, 6, 8, 9}
Queue after shuffling: '{8, 1, 9, 6, 2}
Queue after reversing: '{2, 6, 9, 1, 8}
*/
