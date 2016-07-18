//
//  CardController.swift
//  DeckOfCards
//
//  Created by Emily Mearns on 7/18/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import Foundation

class CardController {
    
    
    
    static let baseUrl = NSURL(string: "http://deckofcardsapi.com/api/deck/new/draw/")
    
    static func fetchDeck(numberOfCards: Int, completion: (cards: [Card]) -> Void) {
        
        guard let url = baseUrl else {return}
        
        let urlParameters = ["count": "\(numberOfCards)"]
        
        NetworkController.performRequestForURL(url, httpMethod: .Get, urlParameters: urlParameters) { (data, error) in
            guard let data = data,
                jsonAnyObject = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments),
                jsonDictionary = jsonAnyObject as? [String: AnyObject],
                cardDictionaries = jsonDictionary["cards"] as? [[String: AnyObject]] else {
                    completion(cards: [])
                    return
            }
            
            let cards = cardDictionaries.flatMap {Card(dictionary: $0)}
            completion(cards: cards)
            
            
            
            return
            
        }
        
    }
    
}