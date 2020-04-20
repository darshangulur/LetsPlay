import UIKit

var str = "Hello, playground bye and"
//str = str.replacingOccurrences(of: ".", with: "")
//str = str.replacingOccurrences(of: ",", with: "")
var words = str.split(separator: " ")
words.sort { $0 > $1 }
words


str = str.lowercased()
let union = CharacterSet.punctuationCharacters.union(CharacterSet.whitespaces)
str.components(separatedBy: union)
