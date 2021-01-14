public struct QueueRingBuffer<T>: Queue {
    
    private var ringBuffer: RingBuffer<T>
    
    public init(count: Int) {
        ringBuffer = RingBuffer<T>(count: count)
    }
    
    public var isEmpty: Bool {
        ringBuffer.isEmpty
    }
    
    public var peek: T? {
        ringBuffer.first
    }
    
    public mutating func enqueue(_ element: T) -> Bool {
        ringBuffer.write(element)
    }
    
    public mutating func dequeue() -> T? {
        isEmpty ? nil : ringBuffer.read()
    }
}

extension QueueRingBuffer: CustomStringConvertible {
    public var description: String {
        String(describing: ringBuffer)
    }
}

var queue = QueueRingBuffer<String>(count: 10)
queue.enqueue("Aj")
queue.enqueue("Any")
queue.enqueue("Chunk")
queue
queue.dequeue()
queue
queue.peek
