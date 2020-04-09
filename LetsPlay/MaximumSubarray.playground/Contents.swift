class Solution1 {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        } else if nums.count == 1 {
            return nums[0]
        }
        
        var largestSum = Int.min
        (0..<nums.count).forEach { outerIndex in
            var sum = 0
            (outerIndex..<nums.count).forEach { innerIndex in
                let innerNumber = nums[innerIndex]
                sum += innerNumber
                
                if sum > largestSum {
                    largestSum = sum
                }
            }
        }
        
        return largestSum
    }
}

let solution1 = Solution1()
solution1.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])

//class Solution2 {
//    func maxSubArray(_ nums: [Int]) -> Int {
//        if nums.count == 0 {
//            return 0
//        } else if nums.count == 1 {
//            return nums[0]
//        }
//
//        let mid = Int(nums.count/2)
//        let left = Array(nums[0..<mid])
//        let right = Array(nums[mid..<nums.count])
//        return max(maxSubArray(left), maxSubArray(right))
//    }
//}

//let solution2 = Solution2()
//solution2.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])

class Solution3 {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        } else if nums.count == 1 {
            return nums[0]
        }
        
        var largestSum = Int.min
        var modelArray = [Int]()
        var sum = 0
        for number in nums {
            sum += number
            modelArray.append(sum)
            
            if sum > largestSum {
                largestSum = sum
            }
        }
                
        (1..<nums.count).forEach { outerIndex in
            var result = [Int](repeating: Int.min, count: outerIndex)
            let previous = nums[outerIndex-1]
                          
            (outerIndex..<nums.count).forEach { innerIndex in
                let value = modelArray[innerIndex] - previous
                result.append(value)
                if value > largestSum {
                    largestSum = value
                }
            }
            
            modelArray = result
        }
        return largestSum
    }
}

let solution3 = Solution3()
solution3.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])

class Solution4 {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        } else if nums.count == 1 {
            return nums[0]
        }
        
        var largestSum = Int.min
        var sum = 0
        (0..<nums.count).forEach { outerIndex in
            let innerNumber = nums[outerIndex]
            sum += innerNumber
                
            if sum > largestSum {
                largestSum = sum
            }
                                  
            if sum < 0 {
                sum = 0
            }
        }
        
        return largestSum
    }
}

let solution4 = Solution4()
solution4.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])


