import Foundation


public func eulerTwo(fibUpTo: Int) -> Int {
    var fibNum: [Int] = []
    var first = 0 , second = 1
    for _ in 1...fibUpTo {
        (first, second) = ( second, first + second)
        fibNum.append(first)
    }
    var sumOf = 0
    for num in fibNum {
        num % 2 == 0 ? sumOf += num : ()
    }
    return sumOf
}
