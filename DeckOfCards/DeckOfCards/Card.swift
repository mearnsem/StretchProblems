//
//  Card.swift
//  DeckOfCards
//
//  Created by Emily Mearns on 7/18/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import Foundation

class Card {
    
    let suit: String
    let value: String
    let image: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let suit = dictionary["suit"] as? String, value = dictionary["value"] as? String, image = dictionary["image"] as? String else {return nil}
        
        self.suit = suit
        self.value = value
        self.image = image
    }
    
}