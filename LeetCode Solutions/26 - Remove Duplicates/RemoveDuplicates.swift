class RDSolution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let inputArrayLength = nums.count
        var tempArray = [Int]()

        for (i, _) in nums.enumerated() {
            let currentElement = nums[i]
            if tempArray.contains(currentElement) == false {
                tempArray.append(currentElement)
            }
        }

        let uniqueCount = tempArray.count

        while tempArray.count < inputArrayLength {
            tempArray.append(101)
        }

        nums = tempArray

        return uniqueCount
    }
}
