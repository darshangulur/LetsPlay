class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        var nums = nums
        let count = nums.count
        if nums.isEmpty || count < 3 {
            return true
        }
        
        var isModified = false
        for index in (0..<count - 1) {
            if nums[index] > nums[index+1] {
                if isModified {
                    return false
                }
                
                if index == 0 {
                    nums[index] = nums[index+1]
                } else if nums[index-1] < nums[index+1] {
                    nums[index] = nums[index-1]
                } else {
                    nums[index+1] = nums[index]
                }
                isModified = true
            }
        }
        
        return true
    }
}

let solution = Solution()
solution.checkPossibility([4,2,3])
solution.checkPossibility([4,3,2])
solution.checkPossibility([4,2,1])
solution.checkPossibility([3,4,2,3])
solution.checkPossibility([-1,4,2,3])
solution.checkPossibility([-1,4,3,2])
