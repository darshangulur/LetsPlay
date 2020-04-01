class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        var x = a, y = b
        
        while y != 0 {
            let carry = x & y
            
            x = x ^ y
            y = carry << 1
        }
        
        return x
    }
}

Solution().getSum(2, -1)

let y = 8
y << 1
y >> 1
