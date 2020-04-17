class Heap<T> {
    private var items: [T]
    private let sortOrder: (a: T, b: T) -> Void
    
    init(sortOrder: (a: T, b: T) -> Void) {
        self.sortOrder = sortOrder
        items = [T]()
    }
    
    func insert() {
        
    }
    
    func remove() {
        
    }
    
    func siftUp() {
        
    }
    
    func siftDown() {
        
    }
    
    var peek: T? {
        return items.first
    }
}
