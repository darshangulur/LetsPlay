class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var grid = grid
        
        for rowIndex in 0..<grid.count {
            let row = grid[rowIndex]
            for columnIndex in 0..<row.count {
                if rowIndex == 0, columnIndex == 0 {
                    // do nothing, could assign value to itself but unnecessary
                } else {
                    let minimumRow = rowIndex-1 >= 0 ? grid[rowIndex-1][columnIndex] : Int.max
                    let minimumColumn = columnIndex-1 >= 0 ? grid[rowIndex][columnIndex-1] : Int.max
                    grid[rowIndex][columnIndex] = min(minimumRow, minimumColumn) + grid[rowIndex][columnIndex]
                }
            }
        }
        
        return grid[grid.count-1][grid[0].count-1]
    }
}
