class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else {
            return 0
        }
        
        if n == 3 {
            return 1
        } else {
            var isPrimes = [Bool]()
            (0..<n).forEach {_ in isPrimes.append(true) }
            isPrimes[0] = false
            isPrimes[1] = false
            
            var count = 0
            (2..<n).forEach { index in
//                print("Checking for \(index)")
                if isPrimes[index] {
//                    print("\(index) not false")
                    count += 1
                    let iterations = Int(n/index) + 1
//                    print("Iterations: \(iterations)")
                    (1..<iterations).forEach {
//                        print("Inner loop: \($0)")
                        if index * $0 < n {
                            isPrimes[index * $0] = false
                        }
                    }
                }
            }
            return count
        }
    }
}

Solution().countPrimes(20)
