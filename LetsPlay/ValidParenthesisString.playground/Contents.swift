class Solution {
    func checkValidString(_ s: String) -> Bool {
        let sArray = Array(s)
        var low = 0
        var high = 0
        for char in sArray {
            high += char == ")" ? -1 : 1
            if high < 0 {
                return false
            }
            low += char == "(" ? 1 : -1
            low = max(low, 0)
        }
        return low == 0
    }
}
