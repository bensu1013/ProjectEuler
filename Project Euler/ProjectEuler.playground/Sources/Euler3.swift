import Foundation

public func eulerThree(num: Int) -> Int {
    var n = num
    var prime = 1
    if n % 2 == 0 {
        prime = 2
        while n % 2 == 0 {
            n = n / 2
        }
    }
    if n % 3 == 0 {
        prime = 3
        while n % 3 == 0 {
            n = n / 3
        }
    }
    var multiSix = 6
    while multiSix - 1 <= n {
        if (n % (multiSix - 1) == 0 ) {
            prime = multiSix - 1
            while n % prime == 0 {
                n = n / prime
            }
        }
        if (n % (multiSix + 1) == 0 ) {
            prime = multiSix + 1
            while n % prime == 0 {
                n = n / prime
            }
        }
        multiSix += 6
    }
    return prime
}
