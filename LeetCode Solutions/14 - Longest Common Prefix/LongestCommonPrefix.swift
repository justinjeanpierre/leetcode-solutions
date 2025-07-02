class LongestCommonPrefixSolution {
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
}
