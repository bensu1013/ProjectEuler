import Foundation

var base = [75, 95, 64, 17, 47, 82,
            18, 35, 87, 10,
            20, 04, 82, 47, 65,
            19, 01, 23, 75, 03, 34,
            88, 02, 77, 73, 07, 63, 67,
            99, 65, 04, 28, 06, 16, 70, 92,
            41, 41, 26, 56, 83, 40, 80, 70, 33,
            41, 48, 72, 33, 47, 32, 37, 16, 94, 29,
            53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14,
            70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57,
            91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48,
            63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31,
            04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]


var tempBase: [[Int]] = []
var tempArray: [Int] = []

for (index, num) in base.enumerated() {
    
    tempArray.append(num)
    
    switch index {
    case 0:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 2:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 5:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 9:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 14:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 20:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 27:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 35:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 44:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 54:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 65:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 77:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 90:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 104:
        tempBase.append(tempArray)
        tempArray.removeAll()
    case 119:
        tempBase.append(tempArray)
        tempArray.removeAll()
    default:
        continue
    }
    
}

var sum = 0
var prevIndex = 0

for (index, section) in tempBase.enumerated() {
    
    if index == 0 {
        sum += section[0]
        prevIndex = 0
    } else {
        
        if section[prevIndex] > section[prevIndex + 1] {
            sum += section[prevIndex]
            print(section[prevIndex])
        } else {
            sum += section[prevIndex + 1]
            prevIndex += 1
            print(section[prevIndex])
        }
        
        
        
        
    }
    
    
    
}

sum
