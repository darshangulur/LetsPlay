class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 0 else { return }
        
        if nums.count == 2, nums[0] == 0 {
            nums.swapAt(0, 1)
            return
        }
        
        var zeroPointer = 0
        (0..<nums.count).forEach {
            if nums[$0] != 0 {
                nums.swapAt($0, zeroPointer)
                    zeroPointer += 1
            }
        }
    }
}

var nums = [0,1,0,3,12]
Solution().moveZeroes(&nums)
