//: Playground - noun: a place where people can play

import UIKit

struct Car {
    var gallonsInTank = 0
}

func fillUp(gallonsInTank: Int, gallonsAtStation: Int) -> Int {
    return gallonsInTank + gallonsAtStation
}

func driveToNextStation(gallonsInTank: Int, gallonsUsed: Int) -> Int {
    return gallonsInTank - gallonsUsed
}

func gasStation(gasStops: [(Int, Int)]) -> Bool {
    
    var hummer = Car()
    
    
    
    for stop in gasStops {
        
        hummer.gallonsInTank = fillUp(hummer.gallonsInTank, gallonsAtStation: stop.0)
        if hummer.gallonsInTank >= stop.1 {
            hummer.gallonsInTank = driveToNextStation(hummer.gallonsInTank, gallonsUsed: stop.1)
        } else {
            return false
        }
        
    }
    
    
    return true
    
}

print(gasStation([(3, 1), (2,2), (1,2), (0,1)]))
