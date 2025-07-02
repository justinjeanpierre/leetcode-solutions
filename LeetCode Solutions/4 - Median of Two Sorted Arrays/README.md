# 4. [Median of Two Sorted Arrays](https://leetcode.com/problems/median-of-two-sorted-arrays/)

Given two sorted arrays `nums1` and `nums2` of size `m` and `n` respectively, return the median of the two sorted arrays.

The overall run time complexity should be `O(log (m+n))`.

Constraints:
- `nums1.length == m`
- `nums2.length == n`
- `0 <= m <= 1000`
- `0 <= n <= 1000`
- `1 <= m + n <= 2000`
- `-106 <= nums1[i], nums2[i] <= 106`

## Solution
```swift
class MedianOfArraysSolution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let all = nums1 + nums2.reversed()

        let tmp = [Int]()

        let mergedArrays = all.reduce((all, tmp)) { (result, elem) -> ([Int], [Int]) in
            let input = result.0
            let output = result.1

            let first = input.first!
            let last = input.last!

            if first < last {
                return (Array(input.dropFirst()), output + [first])
            } else {
                return (Array(input.dropLast()), output + [last])
            }
        }.1

        let ct = mergedArrays.count

        if ct % 2 != 0 {
            return Double(mergedArrays[ct / 2])
        } else {
            let _a = Double(mergedArrays[ct / 2])
            let _b = Double(mergedArrays[(ct / 2) - 1])

            return (_a + _b) / 2
        }
    }
}
```

## Test Cases
```swift
@Test("LeetCode Testcase 4-1") func testLCExample4_1() async throws {
    let input1 = [1, 3]
    let input2 = [2]
    let expectedOutput = 2.0

    let output = MedianOfArraysSolution().findMedianSortedArrays(input1, input2)
    #expect(output == expectedOutput)
}
```

```swift
@Test("LeetCode Testcase 4-2") func testLCExample4_2() async throws {
    let input1 = [1, 2]
    let input2 = [3, 4]
    let expectedOutput = 2.5

    let output = MedianOfArraysSolution().findMedianSortedArrays(input1, input2)
    #expect(output == expectedOutput)
}
```

---

Solution accepted: 2022.05.27
