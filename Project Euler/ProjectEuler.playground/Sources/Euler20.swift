import Foundation

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
    //    return
    n <= 1 ? () : factorial(n: n - 1)
    
}

//factorial(n: 100)
//answer

var results = 0

for digits in answer {
    
    for char in "\(digits)".characters {
        
        results += Int("\(char)")!
        
    }
    
}
