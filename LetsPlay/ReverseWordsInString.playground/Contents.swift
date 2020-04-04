class Solution {
    func reverseWords(_ s: String) -> String {
        guard !s.isEmpty else { return "" }
        var result = ""
        let words = s.split(separator: " ")
        for word in words {
            let word = Array(word)
            var count = word.count - 1
            while count >= 0 {
                result += "\(word[count])"
                count -= 1
            }
            
            result += " "
        }
        result.removeLast()
        return result
    }
}

Solution().reverseWords("Let's take LeetCode contest")
