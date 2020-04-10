class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var stringAndStrings = [String:[String]]()
        for str in strs {
            let sortedString  = String(str.sorted())
            if var value = stringAndStrings[sortedString] {
                value.append(str)
                stringAndStrings[sortedString] = value
            } else {
                stringAndStrings[sortedString] = [str]
            }
        }
        
        return Array(stringAndStrings.values)
    }
}

let solution = Solution()
solution.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
solution.groupAnagrams(["cab","tin","pew","duh","may","ill","buy","bar","max","doc"])
