import Testing

struct LongestCommonPrefixTests {
    @Test("LeetCode Testcase 14-1") func testLCExample14_1() {
        let input = ["flower", "flow", "flight"]
        let expectedOutput = "fl"

        let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
        #expect(output == expectedOutput)
    }

    @Test("LeetCode Testcase 14-2") func testLCExample14_2() {
        let input = ["dog", "racecar", "car"]
        let expectedOutput = ""

        let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
        #expect(output ==  expectedOutput)
    }

    @Test("Testcase 1") func testExample1() {
        let input = ["abc", "ab", "abcd"]
        let expectedOutput = "ab"

        let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
        #expect(output == expectedOutput)
    }

    @Test("Testcase 2") func testExample2() {
        let input = ["abc"]
        let expectedOutput = "abc"

        let output = LongestCommonPrefixSolution().longestCommonPrefix(input)
        #expect(output == expectedOutput)
    }
}
