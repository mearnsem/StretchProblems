//: Playground - noun: a place where people can play

import UIKit

/*
func palindrome(word: String) -> Bool {
    
    var reverse = ""
    
    for character in word.characters {
        let char = "\(character)"
        reverse = char + reverse
    }
    
    return word == reverse
 
}

let racecar = "racecar"
let bumblebee = "bumblebee"

print(palindrome(racecar))
print(palindrome(bumblebee))


func checkPalindrome(word: String) -> Bool {
    print(word)
    if (word == "" || word.characters.count == 1){
        return true
        
    }
    else {
        if word.characters.first == word.characters.last {
            return checkPalindrome(word.substringWithRange(word.startIndex.successor() ..< word.endIndex.predecessor()))
        } else {
            return false
        }
    }
}

print(checkPalindrome("racecar"))
print(checkPalindrome("bumblebee"))
print(checkPalindrome("J"))
*/

func palindrome(word: String) -> Bool {
    
    let punctuation = NSCharacterSet.punctuationCharacterSet()
    let newWord = word.stringByTrimmingCharactersInSet(punctuation)
    
    let reverse = String(newWord.characters.reverse())
    return (newWord == reverse)
}

print(palindrome("racecar....."))
print(palindrome("bumblebee"))

print(palindrome("dammit im mad"))


