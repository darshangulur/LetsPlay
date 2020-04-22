public class BinaryMatrix {
    private var array = [[Int]]()
    init(array: [[Int]]) {
        self.array = array
    }
    public func get(_ x: Int, _ y: Int) -> Int {
        return array[x][y]
    }
    
    public func dimensions() -> [Int] {
        if array.isEmpty {
            return [0,0]
        }
        
        return [array.count, array[0].count]
    }
}

class Solution {
    func leftMostColumnWithOne(_ binaryMatrix: BinaryMatrix) -> Int {
        var lowest: Int?
        let dimensions = binaryMatrix.dimensions()
        
        for i in (0..<dimensions[0]) {
            var innerMaxIndex = dimensions[1]
            if let lowest = lowest {
                innerMaxIndex = lowest
            }
            var left = 0
            var right = innerMaxIndex-1
                
            while left <= right {
                let mid = left + ((right-left)/2)

                if binaryMatrix.get(i, mid) == 1 {
                    right = mid-1
                    lowest = mid
                } else {
                    left = mid+1
                }
            }
        }
        return lowest ?? -1
    }
}

let solution = Solution()
let matrix1 = BinaryMatrix(array: [[0,0,1],[1,1,1],[0,0,0],[0,1,1]])
solution.leftMostColumnWithOne(matrix1)

let matrix2 = BinaryMatrix(array: [[0,0,1],[0,1,1],[0,0,0],[0,1,1]])
solution.leftMostColumnWithOne(matrix2)


