//: Playground - noun: a place where people can play

import UIKit

func starPyramid(height: Int)  {
    
    var starString = ""
    let star = "*"

    for _ in 1...height {
        
        starString += star
        
        print(starString)
        
    }
    
    for _ in (1...(height - 1)).reverse() {
        starString.removeAtIndex(starString.endIndex.predecessor())
        print(starString)
    }
    
}

starPyramid(8)
