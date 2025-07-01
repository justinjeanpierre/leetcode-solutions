class RDSolution {
    /// Given an integer array `nums` sorted in **non-decreasing order**, remove the duplicates **in-place** such that each unique element appears only **once**. The **relative order** of the elements should be kept the **same**. Then return *the number of unique elements in `nums`*.
    ///
    /// Consider the number of unique elements of `nums` to be `k`.  To get accepted, you need to do the following things:
    ///
    /// Change the array `nums` such that the first `k` elements of `nums` contain the unique elements in the order they were present in `nums` initially. The remaining elements of `nums` are not important as well as the size of `nums`.
    /// Return `k`.
    ///
    /// Constraints:
    /// - `1 <= nums.length <= 3 * 10^4`
    /// - `-100 <= nums[i] <= 100`
    /// - `nums is sorted in **non-decreasing** order.
    ///
    /// ---
    ///
    /// Original Problem: [source](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
    ///
    /// Solution accepted: 2025.06.30

    public func removeDuplicates(_ nums: inout [Int]) -> Int {
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
