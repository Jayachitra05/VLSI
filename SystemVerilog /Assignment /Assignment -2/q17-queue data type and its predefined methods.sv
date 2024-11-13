/*17. Write a test bench to test queue data type and its predefined methods by using the following
statements
a. declare an int j and queue q of type int
b. initialize int j as 1 and queue q as (0, 2, 5)
c. insert int j at index 1 in queue q and display q
d. delete index 1 element from queue q and display q
e. push an element (7) in the front in queue q and display q
f. push an element (9) at the back in queue q and display q
g. pop an element from the back of queue q, display q, element
h. pop an element from front of queue q, display q, element
i. reverse, sort, reverse sort, and shuffle the queue*/

module test_queue_methods;
  int j;
  int q[$];
  int popped_back;
  int popped_front;

  initial begin
    j = 1;
    q = {0, 2, 5};
    $display("Initial queue q: %p", q);

    q.insert(1, j);
    $display("Queue after inserting %0d at index 1: %p", j, q);

    q.delete(1);
    $display("Queue after deleting element at index 1: %p", q);

    q.push_front(7);
    $display("Queue after pushing 7 at the front: %p", q);

    q.push_back(9);
    $display("Queue after pushing 9 at the back: %p", q);

    popped_back = q.pop_back();
    $display("Queue after popping from back: %p", q);
    $display("Popped element from back: %0d", popped_back);

    popped_front = q.pop_front();
    $display("Queue after popping from front: %p", q);
    $display("Popped element from front: %0d", popped_front);

    q.reverse();
    $display("Queue after reverse: %p", q);

    q.sort();
    $display("Queue after sort (ascending): %p", q);

    q.rsort();
    $display("Queue after sort (descending): %p", q);

    q.shuffle();
    $display("Queue after shuffle: %p", q);
  end
endmodule

/*Output
Initial queue q: '{0, 2, 5}
Queue after inserting 1 at index 1: '{0, 1, 2, 5}
Queue after deleting element at index 1: '{0, 2, 5}
Queue after pushing 7 at the front: '{7, 0, 2, 5}
Queue after pushing 9 at the back: '{7, 0, 2, 5, 9}
Queue after popping from back: '{7, 0, 2, 5}
Popped element from back: 9
Queue after popping from front: '{0, 2, 5}
Popped element from front: 7
Queue after reverse: '{5, 2, 0}
Queue after sort (ascending): '{0, 2, 5}
Queue after sort (descending): '{5, 2, 0}
Queue after shuffle: '{5, 0, 2}*/
