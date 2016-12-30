import Foundation

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

