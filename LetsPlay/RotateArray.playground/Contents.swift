class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard !nums.isEmpty else { return }
        (0..<k).forEach { index in
            nums.insert(nums.removeLast(), at: 0)
        }
    }
}

var nums = [1,2,3,4,5,6,7]
Solution().rotate(&nums, 2)
