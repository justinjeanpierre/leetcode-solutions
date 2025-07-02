import Testing
@testable import LeetCode_Solutions

struct RESolutionTests {
    @Test("LeetCode Testcase 27-1") func testLCExample1() {
        // given
        var inputArray = [3, 2, 2, 3]
        let inputValue = 3
        let expectedOutput = (2, [2, 2])

        // when
        let actualOutput = RESolution().removeElement(&inputArray, inputValue)

        // then
        #expect(actualOutput == expectedOutput.0)

        for (index, _) in expectedOutput.1.enumerated() {
            #expect(inputArray[index] == expectedOutput.1[index])
        }
    }

    @Test("LeetCode Testcase 27-2") func testLCExample2() {
        // given
        var inputArray = [0,1,2,2,3,0,4,2]
        let inputValue = 2
        let expectedOutput = (5, [0,1,3,0,4])

        // when
        let actualOutput = RESolution().removeElement(&inputArray, inputValue)

        // then
        #expect(actualOutput == expectedOutput.0)

        for (index, _) in expectedOutput.1.enumerated() {
            #expect(inputArray[index] == expectedOutput.1[index])
        }
    }
}
