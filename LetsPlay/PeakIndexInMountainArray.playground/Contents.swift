class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        var index = 0
        var count = A.count
        while index < count-1 {
            if A[index+1] < A[index] {
                return index
            }
            index += 1
        }
        
        return 0
    }
}

let solution = Solution()
solution.peakIndexInMountainArray([0,1,0])
solution.peakIndexInMountainArray([0,2,1,0])
