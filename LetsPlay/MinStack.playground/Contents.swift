class MinStack {
    var values = [Int]()
    var minValues = [Int]()
    
    init() {
        
    }
    
    func push(_ val: Int) {
        values.append(val)
        
        if !minValues.isEmpty, let top = minValues.last {
            if val > top {
                minValues.append(top)
                return
            }
        }
        
        minValues.append(val)
    }
    
    func pop() -> Int {
        minValues.removeLast()
        return values.removeLast()
    }
    
    func top() -> Int {
        values.last!
    }
    
    func getMin() -> Int {
        minValues.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
