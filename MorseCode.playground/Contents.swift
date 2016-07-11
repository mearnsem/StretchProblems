//: Playground - noun: a place where people can play

import UIKit

let a = " •- "
let b = " -••• "
let c = " –•–• "
let d = " –•• "
let e = " • "
let f = " ••–• "
let g = " ––• "
let h = " •••• "
let i = " •• "
let j = " •––– "
let k = " –•– "
let l = " •–•• "
let m = " –– "
let n = " –• "
let o = " ––– "
let p = " •– • "
let q = " ––•– "
let r = " •–• "
let s = " ••• "
let t = " – "
let u = " ••– "
let v = " •••– "
let w = " •–– "
let x = " –••- "
let y = " –•–– "
let z = " ––•• "

func morseCode(code: String) -> String {
    
    var codeString = ""
    let codeLS = code.lowercaseString
    
    for char in codeLS.characters {
        switch char {
        case "a":
            codeString = codeString + a
        case "b":
            codeString = codeString + b
        case "c":
            codeString = codeString + c
        case "d":
            codeString = codeString + d
        case "e":
            codeString = codeString + e
        case "f":
            codeString = codeString + f
        case "g":
            codeString = codeString + g
        case "h":
            codeString = codeString + h
        case "i":
            codeString = codeString + i
        case "j":
            codeString = codeString + j
        case "k":
            codeString = codeString + k
        case "l":
            codeString = codeString + l
        case "m":
            codeString = codeString + m
        case "n":
            codeString = codeString + n
        case "o":
            codeString = codeString + o
        case "p":
            codeString = codeString + p
        case "q":
            codeString = codeString + q
        case "r":
            codeString = codeString + r
        case "s":
            codeString = codeString + s
        case "t":
            codeString = codeString + t
        case "u":
            codeString = codeString + u
        case "v":
            codeString = codeString + v
        case "w":
            codeString = codeString + w
        case "x":
            codeString = codeString + x
        case "y":
            codeString = codeString + y
        case "z":
            codeString = codeString + z
        default:
            codeString = codeString + "/"
            break
        }
    }
    return codeString
}

print(morseCode("What are you sinking about"))
