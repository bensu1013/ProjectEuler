import Foundation


//2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

public func eulerFive() -> Int {
    let testAgainst = [16, 15, 14, 13 , 11]
    var smallest = 116280
    var foundLarger = false
    while !foundLarger {
        for div in testAgainst {
            if !(smallest % div == 0) {
                break
            }
            if div == 11 {
                foundLarger = true
            }
        }
        if !foundLarger {
            smallest += 116280
        }
    }
    return smallest
}

