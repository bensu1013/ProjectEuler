import Foundation


//largest palindrome number made by product of two three digit numbers

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
