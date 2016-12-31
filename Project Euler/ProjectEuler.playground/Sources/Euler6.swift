import Foundation


//The sum of the squares of the first ten natural numbers is,

//1^2 + 2^2 + ... + 10^2 = 385

//The square of the sum of the first ten natural numbers is,

//(1 + 2 + ... + 10)2 = 552 = 3025

//Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

//Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

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
