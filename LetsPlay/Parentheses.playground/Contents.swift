class Solution {
    class Stack {
        var items = [Character]()
        
        func push(item: Character) {
            items.append(item)
        }
        
        func pop() -> Character? {
            return items.removeLast()
        }
        
        var topItem: Character? {
            return items.last
        }
        
        var isEmpty: Bool {
            return items.isEmpty
        }
    }
    
    static let data:[Character: Character] = ["(": ")", "{": "}", "[": "]"]
    
    func isValid(_ s: String) -> Bool {
        guard s.count > 1 else {
            if s.count == 0 {
                return true
            } else {
                return false
            }
        }
        
        let stack = Stack()
        for char in s {
            if let topItem = stack.topItem,
                Solution.data[topItem] == char {
                stack.pop()
            } else {
                stack.push(item: char)
            }
        }
        
        return stack.isEmpty
    }
}


Solution().isValid("()")
