import Testing

struct LongestCommonPrefixTests {
    @Test("LeetCode Testcase 14-1") func testLCExample14_1() {
        // given
        let input = ["flower", "flow", "flight"]
        let expectedOutput = "fl"

        // when
        let actualOutput = LongestCommonPrefixSolution().longestCommonPrefix(input)

        // then
        #expect(actualOutput == expectedOutput)
    }

    @Test("LeetCode Testcase 14-2") func testLCExample14_2() {
        // given
        let input = ["dog", "racecar", "car"]
        let expectedOutput = ""

        // when
        let actualOutput = LongestCommonPrefixSolution().longestCommonPrefix(input)

        // then
        #expect(actualOutput ==  expectedOutput)
    }

    @Test("Testcase 1") func testExample1() {
        // given
        let input = ["abc", "ab", "abcd"]
        let expectedOutput = "ab"

        // when
        let actualOutput = LongestCommonPrefixSolution().longestCommonPrefix(input)

        // then
        #expect(actualOutput == expectedOutput)
    }

    @Test("Testcase 2") func testExample2() {
        // given
        let input = ["abc"]
        let expectedOutput = "abc"

        // when
        let actualOutput = LongestCommonPrefixSolution().longestCommonPrefix(input)

        // then
        #expect(actualOutput == expectedOutput)
    }
}
