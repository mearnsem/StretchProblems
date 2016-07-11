//: Playground - noun: a place where people can play

import UIKit

func multiples(number: Int) -> [[Int]] {
    
    var arrayOne = [Int]()
    var arrayTwo = [Int]()
    var arrayThree = [Int]()
    
    for n in 1...number {
        
        let one = n * 1
        let two = n * 2
        let three = n * 3
        
        if (one <= number) {
            arrayOne.append(one)
        }
        
        if (two <= number) {
            arrayTwo.append(two)
        }
        
        if (three <= number) {
            arrayThree.append(three)
        }
    }
    
    return [arrayOne, arrayTwo, arrayThree]
}

print(multiples(20))
