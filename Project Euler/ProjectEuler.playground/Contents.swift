//: Playground - noun: a place where people can play

import UIKit



func eulerEleven(divisors: Int) -> Int{
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


//eulerEleven(divisors: 500)

76576500










//func eulerTen(max: Int) -> Int {
//    var primeSum = 2
//    var num = 3
//    while num <= max {
//        var isPrime = true
//        for check in 2...Int(sqrt(Double(num))) + 1 {
//            if num%check == 0 {
//                isPrime = false
//                num += 2
//                break
//            }
//        }
//        if isPrime {
//            primeSum += num
//            num += 2
//        }
//    }
//    return primeSum
//}
//
//eulerTen(max: 200000)

//func eulerOne(maxNum: Int) -> Int{
//    var sum = 0
//    for num in 1..<maxNum {
//        if (num % 3 == 0) || (num % 5 == 0) {
//            sum += num
//        }
//    }
//    return sum
//}
//
//eulerOne(maxNum: 10)
//
//func eulerTwo(fibUpTo: Int) -> Int {
//    var fibNum: [Int] = []
//    var first = 0 , second = 1
//    for _ in 1...fibUpTo {
//        (first, second) = ( second, first + second)
//        fibNum.append(first)
//    }
//    var sumOf = 0
//    for num in fibNum {
//        num % 2 == 0 ? sumOf += num : ()
//    }
//    return sumOf
//}
//
//eulerTwo(fibUpTo: 6)
//
////The prime factors of 13195 are 5, 7, 13 and 29.
////What is the largest prime factor of the number 600851475143 ?
//
//func eulerThree(num: Int) -> Int {
//    var n = num
//    var prime = 1
//    if n % 2 == 0 {
//        prime = 2
//        while n % 2 == 0 {
//            n = n / 2
//        }
//    }
//    if n % 3 == 0 {
//        prime = 3
//        while n % 3 == 0 {
//            n = n / 3
//        }
//    }
//    var multiSix = 6
//    while multiSix - 1 <= n {
//        if (n % (multiSix - 1) == 0 ) {
//            prime = multiSix - 1
//            while n % prime == 0 {
//                n = n / prime
//            }
//        }
//        if (n % (multiSix + 1) == 0 ) {
//            prime = multiSix + 1
//            while n % prime == 0 {
//                n = n / prime
//            }
//        }
//        multiSix += 6
//    }
//    return prime
//}
//eulerThree(num: 600851475143)
//
////largest palindrome number made by product of two three digit numbers

//func eulerFour() -> Int {
//    var large = 0
//    for a in (900...999).reversed() {
//        for b in (900...999).reversed() {
//            if isPalindrome(num: a*b) {
//                a*b > large ? large = a*b : ()
//                break
//            }
//        }
//    }
//    return large
//}
//
//func isPalindrome(num: Int) -> Bool {
//    let first = String(num).characters.map{String($0)}
//    let second = String(num).characters.reversed().map{String($0)}
//    return first == second ?  true :  false
//}


//eulerFour()

//func eulerFive() -> Int {
//    let testAgainst = [16, 15, 14, 13 , 11]
//    var smallest = 116280
//    var foundLarger = false
//    while !foundLarger {
//        for div in testAgainst {
//            if !(smallest % div == 0) {
//                break
//            }
//            if div == 11 {
//                foundLarger = true
//            }
//        }
//        if !foundLarger {
//            smallest += 116280
//        }
//    }
//    return smallest
//}
//eulerFive()
//232792560


//func eulerSix(range: Int) -> Int {
//    let sum = sumOfSquare(range: range)
//    let square = squareOfSum(range: range)
//    return sum < square ? square - sum : sum - square
//}
//
//
//func sumOfSquare(range: Int) -> Int {
//    var sum = 0
//    for num in 1...range {
//        sum += num*num
//    }
//    return sum
//}
//func squareOfSum(range: Int) -> Int {
//    var sum = 0
//    for num in 1...range {
//        sum += num
//    }
//    return sum * sum
//}
//
//eulerSix(range: 100)


//func eulerSeven(primeRange: Int) -> Int {
//    var currentPrime = 13
//    var currentCount = 15
//    var primesFound = 6
//    
//    while primesFound < primeRange {
//        var isPrime = true
//        for check in 2...Int(sqrt(Double(currentCount))) {
//            if currentCount%check == 0 {
//                currentCount += 2
//                isPrime = false
//                break
//            }
//        }
//        if isPrime {
//            currentPrime = currentCount
//            currentCount += 2
//            primesFound += 1
//        }
//    }
//    return currentPrime
//}
//
//eulerSeven(primeRange: 1001)

    

//let values = [7,3,1,6,7,1,7,6,5,3,1,3,3,0,6,2,4,9,1,9,2,2,5,1,1,9,6,7,4,4,2,6,5,7,4,7,4,2,3,5,5,3,4,9,1,9,4,9,3,4,
//9,6,9,8,3,5,2,0,3,1,2,7,7,4,5,0,6,3,2,6,2,3,9,5,7,8,3,1,8,0,1,6,9,8,4,8,0,1,8,6,9,4,7,8,8,5,1,8,4,3,
//8,5,8,6,1,5,6,0,7,8,9,1,1,2,9,4,9,4,9,5,4,5,9,5,0,1,7,3,7,9,5,8,3,3,1,9,5,2,8,5,3,2,0,8,8,0,5,5,1,1,
//1,2,5,4,0,6,9,8,7,4,7,1,5,8,5,2,3,8,6,3,0,5,0,7,1,5,6,9,3,2,9,0,9,6,3,2,9,5,2,2,7,4,4,3,0,4,3,5,5,7,
//6,6,8,9,6,6,4,8,9,5,0,4,4,5,2,4,4,5,2,3,1,6,1,7,3,1,8,5,6,4,0,3,0,9,8,7,1,1,1,2,1,7,2,2,3,8,3,1,1,3,
//6,2,2,2,9,8,9,3,4,2,3,3,8,0,3,0,8,1,3,5,3,3,6,2,7,6,6,1,4,2,8,2,8,0,6,4,4,4,4,8,6,6,4,5,2,3,8,7,4,9,
//3,0,3,5,8,9,0,7,2,9,6,2,9,0,4,9,1,5,6,0,4,4,0,7,7,2,3,9,0,7,1,3,8,1,0,5,1,5,8,5,9,3,0,7,9,6,0,8,6,6,
//7,0,1,7,2,4,2,7,1,2,1,8,8,3,9,9,8,7,9,7,9,0,8,7,9,2,2,7,4,9,2,1,9,0,1,6,9,9,7,2,0,8,8,8,0,9,3,7,7,6,
//6,5,7,2,7,3,3,3,0,0,1,0,5,3,3,6,7,8,8,1,2,2,0,2,3,5,4,2,1,8,0,9,7,5,1,2,5,4,5,4,0,5,9,4,7,5,2,2,4,3,
//5,2,5,8,4,9,0,7,7,1,1,6,7,0,5,5,6,0,1,3,6,0,4,8,3,9,5,8,6,4,4,6,7,0,6,3,2,4,4,1,5,7,2,2,1,5,5,3,9,7,
//5,3,6,9,7,8,1,7,9,7,7,8,4,6,1,7,4,0,6,4,9,5,5,1,4,9,2,9,0,8,6,2,5,6,9,3,2,1,9,7,8,4,6,8,6,2,2,4,8,2,
//8,3,9,7,2,2,4,1,3,7,5,6,5,7,0,5,6,0,5,7,4,9,0,2,6,1,4,0,7,9,7,2,9,6,8,6,5,2,4,1,4,5,3,5,1,0,0,4,7,4,
//8,2,1,6,6,3,7,0,4,8,4,4,0,3,1,9,9,8,9,0,0,0,8,8,9,5,2,4,3,4,5,0,6,5,8,5,4,1,2,2,7,5,8,8,6,6,6,8,8,1,
//1,6,4,2,7,1,7,1,4,7,9,9,2,4,4,4,2,9,2,8,2,3,0,8,6,3,4,6,5,6,7,4,8,1,3,9,1,9,1,2,3,1,6,2,8,2,4,5,8,6,
//1,7,8,6,6,4,5,8,3,5,9,1,2,4,5,6,6,5,2,9,4,7,6,5,4,5,6,8,2,8,4,8,9,1,2,8,8,3,1,4,2,6,0,7,6,9,0,0,4,2,
//2,4,2,1,9,0,2,2,6,7,1,0,5,5,6,2,6,3,2,1,1,1,1,1,0,9,3,7,0,5,4,4,2,1,7,5,0,6,9,4,1,6,5,8,9,6,0,4,0,8,
//0,7,1,9,8,4,0,3,8,5,0,9,6,2,4,5,5,4,4,4,3,6,2,9,8,1,2,3,0,9,8,7,8,7,9,9,2,7,2,4,4,2,8,4,9,0,9,1,8,8,
//8,4,5,8,0,1,5,6,1,6,6,0,9,7,9,1,9,1,3,3,8,7,5,4,9,9,2,0,0,5,2,4,0,6,3,6,8,9,9,1,2,5,6,0,7,1,7,6,0,6,
//0,5,8,8,6,1,1,6,4,6,7,1,0,9,4,0,5,0,7,7,5,4,1,0,0,2,2,5,6,9,8,3,1,5,5,2,0,0,0,5,5,9,3,5,7,2,9,7,2,5,
//7,1,6,3,6,2,6,9,5,6,1,8,8,2,6,7,0,4,2,8,2,5,2,4,8,3,6,0,0,8,2,3,2,5,7,5,3,0,4,2,0,7,5,2,9,6,3,4,5,0]
//
//
//
//func eulerEight(clumps: Int) -> Int {
//    var goodCandidate = 0
//    var counter = clumps - 1
//    var countAdjust = 0
//    while counter < values.count {
//        var tempClumps: [Int] = []
//        if !values[countAdjust...counter].contains(0) && !values[countAdjust...counter].contains(1) {
//            for index in countAdjust...counter {
//                tempClumps.append(values[index])
//            }
//        } else {
//            for index in (countAdjust...counter).reversed() {
//                if index == 0 || index == 1 {
//                    counter += (index - countAdjust)
//                    countAdjust += (index - countAdjust)
//                    break
//                }
//            }
//        }
//        if !tempClumps.isEmpty {
//            var product = 1
//            for num in tempClumps {
//                product *= num
//            }
//             product > goodCandidate ? goodCandidate = product : ()
//        }
//        counter += 1
//        countAdjust += 1
//    }
//    return goodCandidate
//}
//
//eulerEight(clumps: 13)

//func eulerNine(sum: Int) {
//    for a in 1...sum/3 {
//        for b in (a+1)...sum/2 {
//            let c = sum - a - b
//            if (a*a + b*b ) == c * c {
//                print("\(a) - \(b) - \(c)")
//            }
//        }
//    }
//}

//eulerNine(sum: 1000)




