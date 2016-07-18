//
//  Subreddit.swift
//  SubredditPost
//
//  Created by Emily Mearns on 7/15/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import Foundation

class Post {
    
    let name: String
    let text: String
    let url: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let dataDictionary = dictionary["data"] as? [String: AnyObject],
            name = dataDictionary["title"] as? String, text = dataDictionary["selftext"] as? String, url = dataDictionary["url"] as? String else {return nil}
        
        self.name = name
        self.text = text
        self.url = url
    }
    
    
}