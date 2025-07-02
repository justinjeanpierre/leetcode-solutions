import Testing

struct MedianSortedArraysTests {
    @Test("LeetCode Testcase 4-1") func testLCExample4_1() {
        // given
        let input1 = [1, 3]
        let input2 = [2]
        let expectedOutput = 2.0

        // when
        let actualOutput = MedianOfArraysSolution().findMedianSortedArrays(input1, input2)

        // then
        #expect(actualOutput == expectedOutput)
    }

    @Test("LeetCode Testcase 4-2") func testLCExample4_2() {
        // given
        let input1 = [1, 2]
        let input2 = [3, 4]
        let expectedOutput = 2.5

        // when
        let actualOutput = MedianOfArraysSolution().findMedianSortedArrays(input1, input2)

        // then
        #expect(actualOutput == expectedOutput)
    }
}
