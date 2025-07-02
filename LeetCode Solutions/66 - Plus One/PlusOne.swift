class PlusOneSolution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var mutableInputs = digits
        var lastDigit = mutableInputs.last!
        
        if lastDigit != 9 {
            mutableInputs = mutableInputs.dropLast()
            lastDigit += 1
            
            mutableInputs.append(lastDigit)
        } else {
            // get suffix of array where first (left-most) digit is not 9
            // increment by one
            // return as array
            var numberOfNines = 1
            mutableInputs = mutableInputs.dropLast()
            
            while mutableInputs.last == 9 {
                mutableInputs = mutableInputs.dropLast()
                numberOfNines += 1
            }
            
            var lastDigit = mutableInputs.last ?? 0
            lastDigit += 1
            mutableInputs = mutableInputs.dropLast()
            mutableInputs.append(lastDigit)
            
            for _ in 1...numberOfNines {
                mutableInputs.append(0)
            }
        }
        
        return mutableInputs
    }
}
