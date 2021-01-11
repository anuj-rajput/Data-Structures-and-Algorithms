public class QueueLinkedList<T>: Queue {
    private var list = DoublyLinkedList<T>()
    public init() { }
    
    public func enqueue(_ element: T) -> Bool {
        list.append(element)
        return true
    }
    
    public func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else {
            return nil
        }
        return list.remove(element)
    }
    
    public var peek: T? {
        list.first?.value
    }
    
    public var isEmpty: Bool {
        list.isEmpty
    }
}

extension QueueLinkedList: CustomStringConvertible {
    public var description: String {
        String(describing: list)
    }
}

var queue = QueueLinkedList<String>()
queue.enqueue("Aj")
queue.enqueue("Ani")
queue.enqueue("Chunks")
queue
queue.dequeue()
queue
queue.peek
