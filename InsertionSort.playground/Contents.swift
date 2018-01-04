// InsertionSort

func sort(_ values: inout [Int]) {
    var endIndex = values.count - 1
    for index in 0..<values.count {
        var startIndex = 0
        var nextIndex = startIndex + 1
        while endIndex != startIndex, nextIndex < values.count {
            if values[startIndex] > values[nextIndex] {
                values.swapAt(startIndex, nextIndex)
            }
            startIndex += 1
            nextIndex = startIndex + 1
        }
        endIndex -= 1
    }
}

var arrayOfNumbers = [90, 40, 80, 50, 10, 70]
sort(&arrayOfNumbers)




