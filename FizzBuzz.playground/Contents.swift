//: Playground - noun: a place where people can play

import UIKit

func fizzBuzz(number: Int) {
    for n in 1...number {
        if (n % 3 == 0) && (n % 5 == 0) {
            print("DevMtn")
        } else if (n % 5 == 0) {
            print("Mtn")
        } else if (n % 3 == 0)  {
            print("Dev")
        } else {
            print(n)
        }
    }
}


fizzBuzz(100)


