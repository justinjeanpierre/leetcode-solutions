import Testing

struct MedianSortedArraysTests {
    @Test("LeetCode Testcase 4-1") func testLCExample4_1() {
        let input1 = [1, 3]
        let input2 = [2]
        let expectedOutput = 2.0

        let output = MedianOfArraysSolution().findMedianSortedArrays(input1, input2)
        #expect(output == expectedOutput)
    }

    @Test("LeetCode Testcase 4-2") func testLCExample4_2() {
        let input1 = [1, 2]
        let input2 = [3, 4]
        let expectedOutput = 2.5

        let output = MedianOfArraysSolution().findMedianSortedArrays(input1, input2)
        #expect(output == expectedOutput)
    }
}
