class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        if grid.isEmpty {
            return 0
        }
        
        let columnCount = grid[0].count
        let rowCount = grid.count
        var didVisit = [[Bool]](repeating: [Bool](repeating: false, count: columnCount), count: rowCount)
        var islands = 0
        for outerIndex in (0..<rowCount) {
            for innerIndex in (0..<columnCount) {
                islands += check(row: outerIndex, column: innerIndex, grid: grid, didVisit: &didVisit)
            }
        }
        return islands
    }
    
    func check(row: Int, column: Int, grid: [[Character]], didVisit: inout [[Bool]]) -> Int {
        if column < 0 || column > grid[0].count - 1 || row < 0 || row > grid.count - 1 {
            return 0
        }
        
        if grid[row][column] == "0" {
            return 0
        }
        
        if didVisit[row][column] {
            return 0
        }
        
        didVisit[row][column] = true
        
        let _ = check(row: row, column: column-1, grid: grid, didVisit: &didVisit)
        let _ = check(row: row-1, column: column, grid: grid, didVisit: &didVisit)
        let _ = check(row: row, column: column+1, grid: grid, didVisit: &didVisit)
        let _ = check(row: row+1, column: column, grid: grid, didVisit: &didVisit)
        
        return 1
    }
}
