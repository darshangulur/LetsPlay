class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        let sum = a * a + b * b + 2 * a * b
        
        var isNegative = false
        if abs(a) > abs(b) {
            isNegative = a < 0
        } else {
            isNegative = b < 0
        }
        
        return Int(Double(sum).squareRoot()) * (isNegative ? -1 : 1)
    }
}

Solution().getSum(2, -1)
