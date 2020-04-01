class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sMap = [Character: Int]()
        for char in s {
            if var value = sMap[char] {
                value += 1
                sMap[char] = value
            } else {
                sMap[char] = 1
            }
        }
        
        var isAnagram = true
        for char in t {
            if var value = sMap[char] {
                value -= 1
                sMap[char] = value
            } else {
                isAnagram = false
                break
            }
        }
        
        if !isAnagram {
            return false
        }
        
        for key in sMap.keys {
            if sMap[key]! > 0 {
                isAnagram = false
                break
            }
        }
        return isAnagram
    }
}


Solution().isAnagram("anagram", "nagaram")
