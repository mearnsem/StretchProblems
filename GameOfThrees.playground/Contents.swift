//: Playground - noun: a place where people can play

import UIKit


func gameOfThrees(number: Int) -> [Int] {
   
    var numberArray = [number]
    var new: Int
    
    if number == 1 {
        return numberArray
    
    } else if number % 3 == 0 {
        new = number / 3
        numberArray.append(new)
        gameOfThrees(new)
        
    } else if number % 3 == 1 {
        new = (number - 1) / 3
        numberArray.append(new)
        gameOfThrees(new)
        
    } else {
        new = (number + 1) / 3
        numberArray.append(new)
        gameOfThrees(new)
        
    }
    
    return numberArray
    
}

print(gameOfThrees(100))



 /*
 returns [100, 33, 11, 4, 1]
 


func gameOfThrees(num: Int) -> [Int] {
    
    var numArray = [num]
    var number = num
    
    while num > 1 {
        if num % 3 == 0 {
            number = number / 3
            numArray.append(number)
        
        } else if (num + 1) % 3 == 1 {
            number = number + 1
        } else {
            number = number - 1
        }
    }
    return numArray
}


print(gameOfThrees(100))


 */



