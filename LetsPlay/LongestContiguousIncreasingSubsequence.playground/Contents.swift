class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        
        var longestLength = 1
        var length = 1
        for index in 0..<nums.count-1 {
            if nums[index] < nums[index+1] {
                length += 1
                
                if length > longestLength {
                    longestLength = length
                }
            } else {
                length = 1
            }
        }
        return longestLength
    }
}

let solution = Solution()
solution.findLengthOfLCIS([1,3,5,4,7])
solution.findLengthOfLCIS([2,2,2,2])
