import Testing

struct PlusOneTests {
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
}
