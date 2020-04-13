class Solution {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        let s = Array(S)
        let t = Array(T)
        
        let sCount = s.count
        let tCount = t.count
        let count = sCount > tCount ? sCount: tCount
        
        var newS = ""
        var newT = ""
        (0..<count).forEach {
            if $0 < sCount {
                let sValue = s[$0]
                if sValue == "#" {
                    if newS.count > 0 {
                        newS.removeLast()
                    }
                } else {
                    newS += "\(sValue)"
                }
            }
            
            if $0 < tCount {
                let tValue = t[$0]
                if tValue == "#" {
                    if newT.count > 0 {
                        newT.removeLast()
                    }
                } else {
                    newT += "\(tValue)"
                }
            }
        }
        print(newS)
        print(newT)
        return newS == newT
    }
}

Solution().backspaceCompare("y#fo##f", "y#f#o##f")
