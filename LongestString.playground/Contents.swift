//: Playground - noun: a place where people can play

import Cocoa

func longestWord(string: String) -> [String] {
    
    let whitespace = NSMutableCharacterSet.whitespaceCharacterSet()
    
    let wordArray = string.componentsSeparatedByCharactersInSet(whitespace)
    
    if let word = wordArray.maxElement({$1.characters.count > $0.characters.count}) {
        print(word)
    }
    
    return wordArray
}


longestWord("I need to go talk to some food about this.")