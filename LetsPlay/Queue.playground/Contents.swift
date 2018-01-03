// Name: Queue
// Compelxity:
//   - Add: O(1)
//   - Remove: O(1)
//   - count: O(1)

struct Queue<T> {
    private var items: [T]
    
    init(items: [T]) {
        self.items = items
    }
    
    mutating func add(item: T) {
        items.append(item)
        print("Items on the Stack =>", items, terminator: "\n")
    }
    
    public mutating func remove() -> ArraySlice<T> {
        let allButFirst = items.dropFirst()
        print("Removing => \(allButFirst)")
        return allButFirst
    }
    
    public var count: Int {
        return items.count
    }
}

var queueOfItems = Queue(items: [])
queueOfItems.count
queueOfItems.add(item: 1)
queueOfItems.count

queueOfItems.add(item: 2)
queueOfItems.add(item: 331)
queueOfItems.add(item: 648)

queueOfItems.remove()
queueOfItems.count





