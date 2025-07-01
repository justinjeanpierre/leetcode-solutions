// https://leetcode.com/problems/remove-element/
//
// submitted successfully: 25.6.30

class RESolution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }

        return nums.count
    }
}
