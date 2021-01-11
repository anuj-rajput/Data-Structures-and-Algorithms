#  Queues

Queues use FIFO or first-in first-out ordering, meaning the first element that was added will always be the first to be removed. Queues are handy when you need to maintain the order of your elements to process later.

## Common operations
Protocol for queues
```swift
public protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element) -> Bool
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}
```

The protocol describes the core operations of the queue
enqueue: Insert an element at the back of the queue. Return `true` if the operation was successful 

dequeue: Remove the element at the front of the queue and return it

isEmpty: Check if the queue is empty

peek: Return the element at the front of the queue without removing it.

Queues can be created in four different ways:
- Using an array
- Using a doubly linked list 
- Using a ring buffer
- Using two stacks

### Using an array
Resizing is an O(n) operation. Resising requires the array to allocate new memory and copy all existing data over to the new array.
Removing an element from the front of the queue is an O(n) operation.

Operations|Best case|Worst case
-------------|-----------|-------------
enqueue(_:)|O(1)|O(1)
dequeue(_:)|O(n)|O(n)
Space Complexity|O(n)|O(n)


### Doubly linked list implementation
Operations|Best case|Worst case
-------------|-----------|-------------
enqueue(_:)|O(1)|O(1)
dequeue(_:)|O(1)|O(1)
Space Complexity|O(n)|O(n)

One of the main problems with `QueueArray` is that dequeuing an item takes linear time. With the linked list implementation, we have reduced it to a constant operation, O(1). All we needed to do was update the node's `previous` and `next` pointers.
The main weakness with `QueueLinkedList` is, despite O(1) performance, it suffers from a high overhead. Each element has to have extra storage for the forward and back reference. Every time you create a new element, it requires an expensive dynamic allocation. `QueueArray` does bulk allocation which is faster.
