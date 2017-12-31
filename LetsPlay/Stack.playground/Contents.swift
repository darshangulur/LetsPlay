// Name: Stack
// Compelxity:
//   - Push: O(1)
//   - Pop: O(1)
//   - count: O(1)

struct Stack<T> {
    private var items: [T]
    
    init(items: [T]) {
        self.items = items
    }
    
    mutating func push(item: T) {
        items.append(item)
        print("Items on the Stack =>", items, terminator: "\n")
    }
    
    public mutating func pop() -> T? {
        guard let lastItem = items.popLast() else { print("Stack is empty"); return nil }
        print("Popping => \(lastItem)")
        return lastItem
    }
    
    public var count: Int {
        return items.count
    }
}

var stackOfBoxes = Stack(items: [])
stackOfBoxes.count
stackOfBoxes.push(item: 1)
stackOfBoxes.count

stackOfBoxes.push(item: 2)
stackOfBoxes.push(item: 331)
stackOfBoxes.push(item: 648)

stackOfBoxes.pop()
stackOfBoxes.count




