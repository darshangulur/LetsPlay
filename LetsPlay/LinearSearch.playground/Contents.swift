// Name: Linear Search
// Complexity: O(n)

func linearSearch<T: Equatable>(array: [T], element: T) -> Int? {
    for (index, object) in array.enumerated() where element == object {
        return index
    }
    return nil
}

let array: [Int] = [0, 5, 3, 2, 7]
linearSearch(array: array, element: 3)
linearSearch(array: array, element: 2)
linearSearch(array: array, element: 7)
