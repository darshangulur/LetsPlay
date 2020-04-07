class KthLargest {

    var values = [Int]()
    let k: Int
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        (0..<nums.count).forEach {
            values.append(nums[$0])
        }
    }
    
    func add(_ val: Int) -> Int {
        values.append(val)
        values.sort { $0 > $1 }
        if values.count > k {
            values.removeLast()
        }
        print(values)
        return values[k-1]
    }
}

let kthLargest = KthLargest(3, [4,5,8,2])
kthLargest.add(3)
kthLargest.add(5)
kthLargest.add(10)
kthLargest.add(9)
kthLargest.add(4)

// To be redone using heap
