# 26. [Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

Given an integer array `nums` sorted in **non-decreasing order**, remove the duplicates **in-place** such that each unique element appears only **once**. The **relative order** of the elements should be kept the **same**. Then return *the number of unique elements in `nums`*.

Consider the number of unique elements of `nums` to be `k`.  To get accepted, you need to do the following things:
 - Change the array `nums` such that the first `k` elements of `nums` contain the unique elements in the order they were present in `nums` initially. The remaining elements of `nums` are not important as well as the size of `nums`.
 - Return `k`.

Constraints:
 - `1 <= nums.length <= 3 * 10^4`
 - `-100 <= nums[i] <= 100`
 - `nums` is sorted in **non-decreasing** order.

## Solution
```swift
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
```

## Test Cases
```swift
@Test("LeetCode Testcase 26-1") func testLCExample1() {
        // given
    var input = [1, 1, 2]
    let expectedOutput = (2, [1, 2, -1])

    // when
    let actualOutput = RDSolution().removeDuplicates(&input)

    // then
    #expect(actualOutput == expectedOutput.0)

    for (index, _) in expectedOutput.1.enumerated() {
        if index < expectedOutput.0 {
            #expect(input[index] == expectedOutput.1[index])
        }
    }
}
```

```swift
@Test("LeetCode Testcase 26-2") func testLCExample2() {
    // given
    var input = [0,0,1,1,1,2,2,3,3,4]
    let expectedOutput = (5, [0, 1, 2, 3, 4, 101, 101, 101, 101, 101])

    // when
    let actualOutput = RDSolution().removeDuplicates(&input)

    // then
    #expect(actualOutput == expectedOutput.0)

    for (index, _) in expectedOutput.1.enumerated() {
        if index < expectedOutput.0 {
            #expect(input[index] == expectedOutput.1[index])
        }
    }
}
```

---

Solution accepted: 2025.06.30
