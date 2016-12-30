import Foundation

public func eulerSix(range: Int) -> Int {
    let sum = sumOfSquare(range: range)
    let square = squareOfSum(range: range)
    return sum < square ? square - sum : sum - square
}

func sumOfSquare(range: Int) -> Int {
    var sum = 0
    for num in 1...range {
        sum += num*num
    }
    return sum
}

func squareOfSum(range: Int) -> Int {
    var sum = 0
    for num in 1...range {
        sum += num
    }
    return sum * sum
}
