# 14. [Longest Common Prefix](https://leetcode.com/problems/longest-common-prefix/)

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string `""`.

Constraints:
- `1 <= strs.length <= 200`
- `0 <= strs[i].length <= 200`
- `strs[i]` consists of only lowercase English letters if it is non-empty.

## Solution
```swift
func longestCommonPrefix(_ strs: [String]) -> String {
    var commonPrefix = ""

    let inputArraySortedByLength = strs.sorted { $0.count < $1.count } // shortest to longest
    let maxPrefixLength = inputArraySortedByLength.first?.count ?? 0

    // if array only has one element, return it
    if inputArraySortedByLength.count == 1,
       let onlyValue = inputArraySortedByLength.first {
            commonPrefix = onlyValue
    } else { // there are multiple array elements
        for element in inputArraySortedByLength { // so, working one word at a time...
        // ...compare words letter-by-letter
            commonPrefix = recursiveComparePrefixes(maxPrefixLength, element, inputArraySortedByLength)
        }
    }

    func recursiveComparePrefixes(_ len: Int, _ src: String, _ array: [String]) -> String {
        guard len != 0 else { return "" }
        guard let comparisonString = array.first?.prefix(len) else { return "" }

        let filteredArray = array.filter { $0.prefix(len) == comparisonString }

        if filteredArray.count == strs.count {  // && longer than commonPrefix
            return "\(comparisonString)"
        } else {
            return recursiveComparePrefixes(len - 1, src, array)
        }
    }

    return commonPrefix
}
```

## Test Cases
```swift
@Test func testLCExample14_1() async throws {
    let input = ["flower", "flow", "flight"]
    let expectedOutput = "fl"

    let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
    #expect(output == expectedOutput)
}
```

```swift
@Test func testLCExample14_2() async throws {
    let input = ["dog", "racecar", "car"]
    let expectedOutput = ""

    let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
    #expect(output ==  expectedOutput)
}
```

```swift
@Test func testExample1() async throws {
    let input = ["abc", "ab", "abcd"]
    let expectedOutput = "ab"

    let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
    #expect(output == expectedOutput)
}
```

```swift
@Test func testExample2() async throws {
    let input = ["abc"]
    let expectedOutput = "abc"

    let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
    #expect(output == expectedOutput)
}
```

---

Solution accepted: 2025.04.21
