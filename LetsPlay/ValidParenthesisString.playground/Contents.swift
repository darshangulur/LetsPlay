class Solution {
    class Stack {
        private var items = [String]()
        
        func push(item: String) {
            items.append(item)
        }
        
        func pop() -> String? {
            return items.removeLast()
        }
        
        var topItem: String? {
            return items.last
        }
        
        var isEmpty: Bool {
            return items.isEmpty
        }
        
        var count: Int {
            return items.count
        }
        
        func clear() {
            items = [String]()
        }
    }
    
    func checkValidString(_ s: String) -> Bool {
        let sArray = Array(s)
        
        if sArray.count > 0, sArray[0] == ")" {
            return false
        }
        
        let stack = Stack()
        for character in sArray {
            let characterString = "\(character)"
            if let topItem = stack.topItem, characterString == ")", topItem == "(" {
                stack.pop()
            } else if characterString != "*" {
                stack.push(item: "\(character)")
            }
        }
        
        if stack.isEmpty {
            return true
        }
        
        stack.clear()
        for character in sArray {
            let characterString = "\(character)"
            if let topItem = stack.topItem {
                if characterString == "*", topItem == "(" {
                    stack.pop()
                } else if characterString == ")", ["(", "*"].contains(topItem) {
                    stack.pop()
                } else {
                     stack.push(item: "\(characterString)")
                }
            } else {
                stack.push(item: "\(characterString)")
            }
        }
        
        if stack.count == 1, let topItem = stack.topItem, topItem == "*" {
            return true
        }
        
        return stack.isEmpty
    }
}

let solution = Solution()
solution.checkValidString("()")
solution.checkValidString(")(")
solution.checkValidString("(*))")

