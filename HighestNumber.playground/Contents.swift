//: Playground - noun: a place where people can play

import UIKit

func highestNumber(array: [Int]) -> Int {

    var x = 0
    
    for n in array {
        if n > x {
            x = n
        }
    }
    
    return x
    
}

print(highestNumber([2, 80, 120, 36, 81, 92]))
