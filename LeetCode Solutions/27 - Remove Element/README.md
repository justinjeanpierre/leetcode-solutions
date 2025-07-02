# 27. [Remove Element](https://leetcode.com/problems/remove-element/)

Given an integer array `nums` and an integer `val`, remove all occurrences of `val` in `nums` **in-place**.
The order of the elements may be changed. Then return *the number of elements in `nums` which are not equal to `val`*.

Consider the number of elements in `nums` which are not equal to `val` be `k`.  To get accepted, you need to do the following things:
 - Change the array `nums` such that the first `k` elements of `nums` contain the elements which are not equal to `val`.  The remaining elements of `nums` are not important as well as the size of `nums`.
 - Return `k`.

 Constraints:
 - `0 <= nums.length <= 100`
 - `0 <= nums[i] <= 50`
 - `0 <= val <= 100`

## Solution
```swift
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums = nums.filter { $0 != val }

    return nums.count
}
```

## Test Cases
```swift
@Test("LeetCode Testcase 27-1") func testLCExample1() {
        // given
    var inputArray = [3, 2, 2, 3]
    let inputValue = 3
    let expectedOutput = (2, [2, 2])

    // when
    let actualOutput = RESolution().removeElement(&inputArray, inputValue)

    // then
    #expect(actualOutput == expectedOutput.0)

    for (index, _) in expectedOutput.1.enumerated() {
        if index < expectedOutput.0 {
            #expect(inputArray[index] == expectedOutput.1[index])
        }
    }
}
```

```swift
@Test("LeetCode Testcase 27-2") func testLCExample2() {
        // given
    var inputArray = [0,1,2,2,3,0,4,2]
    let inputValue = 2
    let expectedOutput = (5, [0,1,3,0,4])

    // when
    let actualOutput = RESolution().removeElement(&inputArray, inputValue)

    // then
    #expect(actualOutput == expectedOutput.0)

    for (index, _) in expectedOutput.1.enumerated() {
        if index < expectedOutput.0 {
            #expect(inputArray[index] == expectedOutput.1[index])
        }
    }
}
```

---

Solution accepted: 2025.06.30
