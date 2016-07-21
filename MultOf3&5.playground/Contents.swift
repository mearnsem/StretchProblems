//: Playground - noun: a place where people can play

import UIKit

func multiples(number: Int) {
    
    var array: [Int] = []
    var sum = 0
    
    for n in 0...(number - 1) {
        if n % 3 == 0 || n % 5 == 0 {
            array.append(n)
        }
    }
    
    sum += array.reduce(0, combine: +)
    
    print(sum)
    
}

multiples(10)
