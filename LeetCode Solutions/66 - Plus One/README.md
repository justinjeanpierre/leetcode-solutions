# 66. [Plus One](https://leetcode.com/problems/plus-one/)

You are given a **large integer** represented as an integer array `digits`, where each `digits[i]` is the `ith` digit of the integer.
The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading `0`'s.

Increment the large integer by one and return *the resulting array of digits*.

Constraints:
- `1 <= digits.length <= 100`
- `0 <= digits[i] <= 9`
- `digits` does not contain any leading `0`s.


## Solution
```swift
class PlusOneSolution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var mutableInputs = digits
        var lastDigit = mutableInputs.last!
        
        if lastDigit != 9 {
            mutableInputs = mutableInputs.dropLast()
            lastDigit += 1
            
            mutableInputs.append(lastDigit)
        } else {
            // get suffix of array where first (left-most) digit is not 9
            // increment by one
            // return as array
            var numberOfNines = 1
            mutableInputs = mutableInputs.dropLast()
            
            while mutableInputs.last == 9 {
                mutableInputs = mutableInputs.dropLast()
                numberOfNines += 1
            }
            
            var lastDigit = mutableInputs.last ?? 0
            lastDigit += 1
            mutableInputs = mutableInputs.dropLast()
            mutableInputs.append(lastDigit)
            
            for _ in 1...numberOfNines {
                mutableInputs.append(0)
            }
        }
        
        return mutableInputs
    }
}
```

## Test Cases
```swift
@Test("LeetCode Testcase 66-1") func testLCExample1() {
    // given
    let input = [1, 2, 3]
    let expectedOutput = [1, 2, 4]

    // when
    let actualOutput = PlusOneSolution().plusOne(input)

    // then
    for (index, _) in expectedOutput.enumerated() {
        #expect(actualOutput[index] == expectedOutput[index])
    }
}
```

```swift
@Test("LeetCode Testcase 66-2") func testLCExample2() {
    // given
    let input = [4, 3, 2, 1]
    let expectedOutput = [4, 3, 2, 2]

    // when
    let actualOutput = PlusOneSolution().plusOne(input)

    // then
    for (index, _) in expectedOutput.enumerated() {
        #expect(actualOutput[index] == expectedOutput[index])
    }
}
```

```swift
@Test("LeetCode Testcase 66-3") func testLCExample3() {
    // given
    let input = [9]
    let expectedOutput = [1, 0]

    // when
    let actualOutput = PlusOneSolution().plusOne(input)

    // then
    for (index, _) in expectedOutput.enumerated() {
        #expect(actualOutput[index] == expectedOutput[index])
    }
}
```

```swift
@Test("LeetCode Testcase 66-61") func testLCExample61() {
    // given
    let input = [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]
    let expectedOutput = [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,7]

    // when
    let actualOutput = PlusOneSolution().plusOne(input)

    // then
    for (index, _) in expectedOutput.enumerated() {
        #expect(actualOutput[index] == expectedOutput[index])
    }
}
```

```swift
@Test("LeetCode Testcase 66-86") func testLCExample86() {
    // given
    let input = [5,2,2,6,5,7,1,9,0,3,8,6,8,6,5,2,1,8,7,9,8,3,8,4,7,2,5,8,9]
    let expectedOutput = [5,2,2,6,5,7,1,9,0,3,8,6,8,6,5,2,1,8,7,9,8,3,8,4,7,2,5,9,0]

    // when
    let actualOutput = PlusOneSolution().plusOne(input)

    // then
    for (index, _) in expectedOutput.enumerated() {
        #expect(actualOutput[index] == expectedOutput[index])
    }
}
```

---

Solution accepted: 2022.05.27

