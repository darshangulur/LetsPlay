class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty {
            return -1
        }
        
        var left = 0
        var right = nums.count-1
        while left <= right {
            let mid = left + ((right-left)/2)
            if nums[mid] == target {
                return mid
            }
            
            if nums[mid] >= nums[left] {
                if target >= nums[left], target < nums[mid] {
                    right = mid-1
                } else {
                    left = mid+1
                }
            } else {
                if target > nums[mid], target <= nums[right] {
                    left = mid+1
                } else {
                    right = mid-1
                }
            }
        }
        
        return -1
    }
}
