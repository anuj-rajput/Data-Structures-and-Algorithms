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
