class Heap<T> where T: Comparable {
    private var items: [T]
    private let sortOrder: (T, T) -> Bool
    
    init(sortOrder: @escaping (T, T) -> Bool) {
        self.sortOrder = sortOrder
        items = [T]()
    }
    
    func insert(item: T) {
        items.append(item)
        siftUp(index: items.count - 1)
    }
    
    func remove() {
        guard !items.isEmpty else { return }
        if items.count == 1 {
            items.removeLast()
        } else {
            swap(&items[0], &items[items.count - 1])
            items.removeLast()
            siftDown(index: 0)
        }
    }
    
    func parent(forIndex index: Int) -> Int {
        return Int((index-1)/2)
    }

    func left(forIndex index: Int) -> Int {
        return 2*index+1
    }
    
    func right(forIndex index: Int) -> Int {
        return 2*index+2
    }
    
    func siftUp(index: Int) {
        var index = index
        let indexValue = items[index]
        var parentIndex = parent(forIndex: index)
        var parentValue = items[parentIndex]
        
        while index > 0, sortOrder(indexValue, parentValue) {
            swap(&items[index], &items[parentIndex])
            
            index = parentIndex
            parentIndex = parent(forIndex: index)
            parentValue = items[parentIndex]
        }
    }
    
    func siftDown(index: Int) {
        var first = index
        
        let leftIndex = left(forIndex: index)
        let rightIndex = right(forIndex: index)
        if leftIndex < items.count, sortOrder(items[leftIndex], items[first]) {
            first = leftIndex
        }
        if rightIndex < items.count, sortOrder(items[rightIndex], items[first]) {
            first = rightIndex
        }
        if index == first {
            return
        }
        
        swap(&items[index], &items[first])
        siftDown(index: first)
    }
    
    var peek: T? {
        return items.first
    }
}


