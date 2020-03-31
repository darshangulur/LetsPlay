import Darwin

class Solution {
    func isHappy(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        
        var isHappy = false
        var result = n
        var uniqueResults = Set<Int>()
        while result != 1 {
            let stringResult = String(result)
            result = 0
            for char in stringResult {
                let number = Int("\(char)")!
                result += number * number
            }
            
            if result == 1 {
                isHappy = true
                break
            }
            
            if uniqueResults.contains(result) {
                isHappy = false
                break
            }
            uniqueResults.insert(result)
        }
        
        return isHappy
    }
}

let solution = Solution()
solution.isHappy(19)
solution.isHappy(4)
solution.isHappy(2)
solution.isHappy(7)
