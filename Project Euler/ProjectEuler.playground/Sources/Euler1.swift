import Foundation

public func eulerOne(maxNum: Int) -> Int {
    var sum = 0
    for num in 1..<maxNum {
        if (num % 3 == 0) || (num % 5 == 0) {
            sum += num
        }
    }
    return sum
}
