class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for number in nums {
            result ^= number
        }
        
        return result
    }
}

let solution = Solution()
solution.singleNumber([2,2,1])
solution.singleNumber([4,1,2,1,2])
