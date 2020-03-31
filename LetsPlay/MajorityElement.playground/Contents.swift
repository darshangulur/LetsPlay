//class Solution {
//    func majorityElement(_ nums: [Int]) -> Int {
//        let halfSize = nums.count/2
//        var majorityElement = Int.min
//
//        var numsAndCount = [Int: Int]()
//        for num in nums {
//            if var count = numsAndCount[num] {
//                count += 1
//                numsAndCount[num] = count
//
//                if count > halfSize {
//                    majorityElement = num
//                    break
//                }
//            } else {
//                numsAndCount[num] = 1
//            }
//        }
//
//        return majorityElement
//    }
//}
//
//Solution().majorityElement([3,2,3])
//Solution().majorityElement([2,2,5,1,1,9,2,6,3])

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0, majorityElement = 0
        
        for num in nums {
            if count == 0 {
                majorityElement = num
            }
            
            count += (num == majorityElement) ? 1: -1
        }
        
        return majorityElement
    }
}

Solution().majorityElement([6,5,5])
//Solution().majorityElement([2,2,5,1,1,9,2,6,3])
