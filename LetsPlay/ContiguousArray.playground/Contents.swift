class Solution1 {
    func findMaxLength(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var maxLength = 0
        for index in (0..<nums.count) {
            var numZeros = 0
            var numOnes = 0
            
            (index..<nums.count).forEach {
                let num = nums[$0]
                if num == 0 {
                    numZeros += 1
                } else {
                    numOnes += 1
                }
            
                if numZeros == numOnes {
                    maxLength = max(maxLength, numZeros + numOnes)
                }
            }
        }
        
        return maxLength
    }
}

class Solution2 {
    func findMaxLength(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var maxLength = 0
        var count = 0
        var countToIndex = [0:-1]
        for (index,num) in nums.enumerated() {
            count += num == 1 ? 1 : -1
            
            if let prevIndex = countToIndex[count] {
                maxLength = max(maxLength, index-prevIndex)
            } else {
                countToIndex[count] = index
            }
        }
        
        return maxLength
    }
}

let solution = Solution2()
solution.findMaxLength([0,1])
solution.findMaxLength([1,1])
