class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        guard !stones.isEmpty else { return 0 }
        
        var stones = stones
        while stones.count > 1 {
            stones.sort { $0 > $1 }
            let result = abs(stones.removeFirst() - stones.removeFirst())
            if result != 0 {
                stones.append(result)
            }
        }
        return stones.count == 1 ? stones[0] : 0
    }
}

Solution().lastStoneWeight([2,7,4,1,8,1])
