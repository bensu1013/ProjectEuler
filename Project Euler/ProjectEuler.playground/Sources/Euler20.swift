import Foundation


//n! means n × (n − 1) × ... × 3 × 2 × 1

//For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
//and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

//Find the sum of the digits in the number 100!



var storage = 1

var answer: [Int] = [1]

func factorial(n: Int) {
    
    var extra = 0
    
    for (index, value) in answer.enumerated() {
        
        answer[index] = value * n
        
        if extra != 0 {
            
            answer[index] = answer[index] + extra
            extra = 0
        }
        
        if answer[index] > 1000000 {
            
            extra = answer[index] / 1000000
            answer[index] = answer[index] - (extra * 1000000)
            
            if index == answer.count - 1 {
                answer.append(extra)
            } else {
                answer[index + 1] = answer[index + 1] + extra
            }
        } else {
            extra = 0
        }
    }
    n <= 1 ? () : factorial(n: n - 1)
}

func sumOfAnswer() -> Int {
    
    factorial(n: 100)
    var results = 0
    
    for digits in answer {
        
        for char in "\(digits)".characters {
            
            results += Int("\(char)")!
            
        }
    }
    return results
}

public func eulerTwenty() -> Int {
    
    let answer = sumOfAnswer()
    return answer
    
}
