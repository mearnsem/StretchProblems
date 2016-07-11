//: Playground - noun: a place where people can play

import UIKit

func add(numbers: [Int]) -> Int {
    
    var sum = 0
    
    for n in numbers {
        sum += n
    }
    return sum
}

print(add([1]))
print(add([3, 7]))
print(add([3, 7, 2, 9, 12, 11]))


