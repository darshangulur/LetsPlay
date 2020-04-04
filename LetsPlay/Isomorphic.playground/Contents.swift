class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)
        
        var oneWay = [Character: Character]()
        var otherWay = [Character: Character]()
        for (index, sCharacter) in s.enumerated() {
            let tCharacter = t[index]
            
            if let tValue = oneWay[sCharacter], tCharacter != tValue {
                return false
            }
            
            if let sValue = otherWay[tCharacter], sCharacter != sValue {
                return false
            }
            
            oneWay[sCharacter] = tCharacter
            otherWay[tCharacter] = sCharacter
        }
        
        return true
    }
}

Solution().isIsomorphic("aag", "ddw")

//class Solution {
//    func isIsomorphic(_ s: String, _ t: String) -> Bool {
//        let s = Array(s)
//        let t = Array(t)
//
//        var oneWay = [Character: Int]()
//        var otherWay = [Character: Int]()
//        for (index, sCharacter) in s.enumerated() {
//            let tCharacter = t[index]
//
//            if otherWay[tCharacter] != oneWay[sCharacter] {
//                return false
//            }
//
//            oneWay[sCharacter] = index
//            otherWay[tCharacter] = index
//        }
//
//        return true
//    }
//}
