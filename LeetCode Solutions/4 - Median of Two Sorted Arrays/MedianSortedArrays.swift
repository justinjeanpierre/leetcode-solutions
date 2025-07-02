class MedianOfArraysSolution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let all = nums1 + nums2.reversed()

        let tmp = [Int]()

        let mergedArrays = all.reduce((all, tmp)) { (result, elem) -> ([Int], [Int]) in
            let input = result.0
            let output = result.1

            let first = input.first!
            let last = input.last!

            if first < last {
                return (Array(input.dropFirst()), output + [first])
            } else {
                return (Array(input.dropLast()), output + [last])
            }
        }.1

        let ct = mergedArrays.count

        if ct % 2 != 0 {
            return Double(mergedArrays[ct / 2])
        } else {
            let _a = Double(mergedArrays[ct / 2])
            let _b = Double(mergedArrays[(ct / 2) - 1])

            return (_a + _b) / 2
        }
    }
}
