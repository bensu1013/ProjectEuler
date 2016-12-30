import Foundation

public func eulerSeven(primeRange: Int) -> Int {
    var currentPrime = 13
    var currentCount = 15
    var primesFound = 6

    while primesFound < primeRange {
        var isPrime = true
        for check in 2...Int(sqrt(Double(currentCount))) {
            if currentCount%check == 0 {
                currentCount += 2
                isPrime = false
                break
            }
        }
        if isPrime {
            currentPrime = currentCount
            currentCount += 2
            primesFound += 1
        }
    }
    return currentPrime
}
