//class Solution {
//    func romanToInt(_ s: String) -> Int {
//        let sArray = Array(s)
//         let values: [String: Int] = [
//             "I": 1,
//             "V": 5,
//             "X": 10,
//             "L": 50,
//             "C": 100,
//             "D": 500,
//             "M": 1000
//         ]
//
//        var index = 0
//        var total = 0
//        while index < sArray.count {
//            let character = sArray[index]
//
//            if let value = values["\(character)"] {
//                if ["I", "X", "C"].contains(character) {
//                    if index + 1 < sArray.count {
//                        let nextCharacter = sArray[index + 1]
//                        let nextValue = values["\(nextCharacter)"] ?? 0
//
//                        if character == "I",
//                            nextCharacter != "I",
//                            nextCharacter == "V" || nextCharacter == "X" {
//                            total += nextValue - value
//                            index += 2
//                        } else if character == "X",
//                            nextCharacter != "X",
//                            nextCharacter == "L" || nextCharacter == "C" {
//                            total += nextValue - value
//                            index += 2
//                        } else if character == "C",
//                            nextCharacter != "C",
//                            nextCharacter == "D" || nextCharacter == "M" {
//                            total += nextValue - value
//                            index += 2
//                        } else {
//                            total += value
//                            index += 1
//                        }
//                    } else {
//                        total += value
//                        index += 1
//                    }
//                } else {
//                    total += value
//                    index += 1
//                }
//            } else {
//                print("Wrong Input")
//                break
//            }
//        }
//
//        return total
//    }
//}

//Solution().romanToInt("LVIII")

//class Solution {
//    func romanToInt(_ s: String) -> Int {
//        let values: [Character: Int] = [
//            "I": 1,
//            "V": 5,
//            "X": 10,
//            "L": 50,
//            "C": 100,
//            "D": 500,
//            "M": 1000
//        ]
//
//        var array: [Int] = s.compactMap { values[$0] }
//
//        var total = 0
//        while array.count != 0 {
//            if array.count == 1 {
//                total += array.first ?? 0
//                array.removeFirst()
//                break
//            } else {
//                if array[0] < array[1] {
//                    total += array[1] - array[0]
//                    array.removeFirst()
//                    array.removeFirst()
//                } else {
//                    total += array[0]
//                    array.removeFirst()
//                }
//            }
//        }
//
//        return total
//    }
//}

//Solution().romanToInt("M")

//class Solution {
//    let values: [Character: Int] = [
//            "I": 1,
//            "V": 5,
//            "X": 10,
//            "L": 50,
//            "C": 100,
//            "D": 500,
//            "M": 1000
//        ]
//
//    func romanToInt(_ s: String) -> Int {
//        var array: [Int] = s.compactMap { values[$0] }
//
//        var total = 0
//        while array.count != 0 {
//            if array.count == 1 {
//                total += array.first ?? 0
//                array.removeFirst()
//                break
//            }
//
//            if array[0] >= array[1] {
//                total += array[0]
//                array.removeFirst()
//            } else {
//                total += array[1] - array[0]
//                array.removeFirst()
//                array.removeFirst()
//            }
//        }
//
//        return total
//    }
//}
//
//Solution().romanToInt("VI")

class Solution {
    static let datas: [Character: Int] = [ "I":1,
                                            "V":5,
                                            "X":10,
                                            "L":50,
                                            "C":100,
                                            "D":500,
                                            "M":1000]
    
    func romanToInt(_ s: String) -> Int {

        var previousValue: Int = 1001
        var total: Int = 0
        
        for char in s {
            let value = Solution.datas[char]!
            
            if previousValue < value {
                total -= previousValue
                total -= previousValue
            }
            
            total += value
            previousValue = value
        }
        
        return total
    }
}

Solution().romanToInt("MCMXCIV")
