class MinStack {
    
    struct MinimumInt {
        let value: Int
        let minimum: Int
    }

    var minimum = Int.max
    var items: [MinimumInt]
    init() {
        items = [MinimumInt]()
    }
    
    func push(_ x: Int) {
        let minimum = getMin()
        if x < minimum {
            items.append(MinStack.MinimumInt(value: x, minimum: x))
        } else {
            items.append(MinStack.MinimumInt(value: x, minimum: minimum))
        }
    }
    
    func pop() {
        items.removeLast()
        
        if items.isEmpty {
            minimum = Int.max
        }
    }
    
    func top() -> Int {
        return items.last?.value ?? Int.max
    }
    
    func getMin() -> Int {
        return items.last?.minimum ?? Int.max
    }
}


// ["MinStack","push","push","push","top","pop","getMin","pop","getMin","pop","push","top","getMin","push","top","getMin","pop","getMin"]
// [[],[2147483646],[2147483646],[2147483647],[],[],[],[],[],[],[2147483647],[],[],[-2147483648],[],[],[],[]]

let stack = MinStack()
stack.push(-10)
stack.push(14)
stack.getMin()
stack.getMin()
stack.push(-20)
stack.getMin()
stack.getMin()
stack.top()
stack.getMin()
stack.pop()
stack.push(10)
stack.push(-7)
stack.getMin()
stack.push(-7)
stack.pop()
stack.top()
stack.getMin()
stack.pop()
