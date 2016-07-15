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
    let url: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary["title"] as? String, url = dictionary["url"] as? String else {return nil}
        
        self.name = name
        self.url = url
    }
    
    
}