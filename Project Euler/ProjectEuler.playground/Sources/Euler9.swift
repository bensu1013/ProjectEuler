import Foundation

public func eulerNine(sum: Int) {
    for a in 1...sum/3 {
        for b in (a+1)...sum/2 {
            let c = sum - a - b
            if (a*a + b*b ) == c * c {
                print("\(a) - \(b) - \(c)")
            }
        }
    }
}
