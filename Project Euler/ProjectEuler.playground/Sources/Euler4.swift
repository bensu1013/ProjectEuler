import Foundation


//A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//
//Find the largest palindrome made from the product of two 3-digit numbers.

public func eulerFour() -> Int {
    var large = 0
    for a in (900...999).reversed() {
        for b in (900...999).reversed() {
            if isPalindrome(num: a*b) {
                a*b > large ? large = a*b : ()
                break
            }
        }
    }
    return large
}

func isPalindrome(num: Int) -> Bool {
    let first = String(num).characters.map{String($0)}
    let second = String(num).characters.reversed().map{String($0)}
    return first == second ?  true :  false
}
