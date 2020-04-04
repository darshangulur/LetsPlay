class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        
        var values = [Int: Bool]()
        for number in nums {
            values[number] = true
        }
        
        var missing = [Int]()
        (1...nums.count).forEach {
            if !(values[$0] ?? false) {
                missing.append($0)
            }
        }
        
        return missing
    }
}
