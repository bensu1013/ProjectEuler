import Foundation

public func eulerEleven(divisors: Int) -> Int{
    var isLooking = true
    var primeCounter = 0
    var triangleNumber = 1
    var triNumCounter = 0
    while isLooking {
        triangleNumber += triNumCounter
        triNumCounter += 1
        
        for num in 1...triangleNumber {
            if triangleNumber % num == 0 {
                primeCounter += 1
            }
        }
        
        if primeCounter >= divisors {
            isLooking = false
        }
        primeCounter = 0
    }
    
    return triangleNumber
    
}
