import Testing

struct RemoveDuplicatesTests {
    @Test("LeetCode Testcase 26-1") func testLCExample1() {
        var input = [1, 1, 2]
        let expectedOutput = (2, [1, 2, -1])

        let output = RDSolution().removeDuplicates(&input)
        #expect(output == expectedOutput.0)

        for (index, _) in expectedOutput.1.enumerated() {
            if index < expectedOutput.0 {
                #expect(input[index] == expectedOutput.1[index])
            }
        }
    }

    @Test("LeetCode Testcase 26-2") func testLCExample2() {
        var input = [0,0,1,1,1,2,2,3,3,4]
        let expectedOutput = (5, [0, 1, 2, 3, 4, 101, 101, 101, 101, 101])

        let output = RDSolution().removeDuplicates(&input)
        #expect(output == expectedOutput.0)

        for (index, _) in expectedOutput.1.enumerated() {
            if index < expectedOutput.0 {
                #expect(input[index] == expectedOutput.1[index])
            }
        }
    }
}
