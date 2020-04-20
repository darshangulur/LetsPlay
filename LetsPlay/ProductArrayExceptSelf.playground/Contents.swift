class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var array = Array(repeating: 1, count: nums.count)
        
        var product = 1
        for index in (0..<nums.count) {
            array[index] = product
            product *= nums[index]
        }
        
        product = 1
        for index in (0..<nums.count).reversed() {
            array[index] *= product
            product *= nums[index]
        }
        
        return array
    }
}

Solution().productExceptSelf([1,2,3,4])
