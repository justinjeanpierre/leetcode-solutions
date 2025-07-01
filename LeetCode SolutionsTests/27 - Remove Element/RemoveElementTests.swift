import Testing
@testable import LeetCode_Solutions

struct RESolutionTests {
    @Test("LeetCode Testcase 1") func testLCExample1() {
        var inputArray = [3, 2, 2, 3]
        let inputValue = 3
        let expectedOutput = (2, [2, 2])

        let output = RESolution().removeElement(&inputArray, inputValue)
        #expect(output == expectedOutput.0)

        for (index, _) in expectedOutput.1.enumerated() {
            if index < expectedOutput.0 {
                #expect(inputArray[index] == expectedOutput.1[index])
            }
        }
    }

    @Test("LeetCode Testcase 2") func testLCExample2() {
        var inputArray = [0,1,2,2,3,0,4,2]
        let inputValue = 2
        let expectedOutput = (5, [0,1,3,0,4])

        let output = RESolution().removeElement(&inputArray, inputValue)
        #expect(output == expectedOutput.0)

        for (index, _) in expectedOutput.1.enumerated() {
            if index < expectedOutput.0 {
                #expect(inputArray[index] == expectedOutput.1[index])
            }
        }
    }
}
