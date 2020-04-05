class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        let plotCount = flowerbed.count
        if plotCount == 1, flowerbed[0] == 0 {
            return true
        }
        
        var numberToPlant = n
        
        var index = 0
        if flowerbed[0] == 0 {
            if flowerbed[1] == 0 {
                index = 0
            } else {
                index = 3
            }
        } else {
            index = 2
        }
        
        while index < plotCount {
            let isEmpty = flowerbed[index] == 0
            if isEmpty {
                if index != plotCount - 1 {
                    if flowerbed[index+1] == 0 {
                        numberToPlant -= 1
                        index += 2
                    } else {
                        index += 3
                    }
                } else {
                    numberToPlant -= 1
                    break
                }
            } else {
                index += 2
            }
            
            if numberToPlant <= 0 {
                return true
            }
        }
        
        return numberToPlant <= 0
    }
}

let solution = Solution()
//solution.canPlaceFlowers([1,0,0,0,1], 1)
//solution.canPlaceFlowers([1,0,0,0,1], 2)
//solution.canPlaceFlowers([1,0,0,0,0,0,1], 2)
//solution.canPlaceFlowers([1, 0, 0, 0, 1, 0, 0], 2)
//solution.canPlaceFlowers([0,1,0,1,0,1,0,0], 2)
solution.canPlaceFlowers([1,0,0,0,1,0,0], 2)

