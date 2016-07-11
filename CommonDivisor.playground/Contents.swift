//: Playground - noun: a place where people can play

import UIKit

func gcd(a: Int, b: Int) -> Int {
    
    let divisor = a % b
    
    if divisor == 0 {
        return a
        
    } else if a > divisor {
        
        gcd(b, b: divisor)
        
    } else if a < divisor {
        
        gcd(divisor, b: a)
        
    }
    
    return divisor
    
    
}



print(gcd(48, b: 18))
print(gcd(8, b: 12))
