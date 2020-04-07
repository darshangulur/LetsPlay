class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var charsDict = [Character: Int]()
        for c in chars {
            if let value = charsDict[c] {
                charsDict[c] = value + 1
            } else {
                charsDict[c] = 1
            }
        }
        
        var numberOfCharacters = 0
        for word in words where word.count <= chars.count {
            var wordsDict = [Character: Int]()
            for c in word {
                if let value = wordsDict[c] {
                    wordsDict[c] = value + 1
                } else {
                    wordsDict[c] = 1
                }
            }
            
            var canFormTheWord = false
            for c in wordsDict.keys {
                if let valueInWordsDict = wordsDict[c],
                  let valueInCharsDict = charsDict[c],
                  valueInWordsDict <= valueInCharsDict {
                    canFormTheWord = true
                } else {
                      canFormTheWord = false
                      break
                }
            }
            
            if canFormTheWord {
                numberOfCharacters += word.count
            }
        }
        
        return numberOfCharacters
    }
}

Solution().countCharacters(["cat","bt","hat","tree"], "atach")
