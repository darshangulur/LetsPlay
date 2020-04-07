class MyHashSet {

    var values = [Bool]()
    init() {
        values = Array(repeating: false, count: 1000000)
    }
    
    func add(_ key: Int) {
        values[key] = true
    }
    
    func remove(_ key: Int) {
        values[key] = false
    }
    
    /** Returns true if this set contains the specified element */
    func contains(_ key: Int) -> Bool {
        return values[key] != false
    }
}
