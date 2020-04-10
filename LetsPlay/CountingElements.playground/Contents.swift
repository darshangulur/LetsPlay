class Solution {
    func countElements(_ arr: [Int]) -> Int {
        var values = [Int: Int]()
        for num in arr {
            if let value = values[num] {
                values[num] = value + 1
            } else {
                values[num] = 1
            }
        }
        
        var count = 0
        for num in arr {
            if let value = values[num+1] {
                count += 1
            }
        }

        return count
    }
}

Solution().countElements([1,2,3])
