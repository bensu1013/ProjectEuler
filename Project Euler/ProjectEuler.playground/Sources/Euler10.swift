import Foundation


public func eulerTen(max: Int) -> Int {
    var primeSum = 2
    var num = 3
    while num <= max {
        var isPrime = true
        for check in 2...Int(sqrt(Double(num))) + 1 {
            if num%check == 0 {
                isPrime = false
                num += 2
                break
            }
        }
        if isPrime {
            primeSum += num
            num += 2
        }
    }
    return primeSum
}
