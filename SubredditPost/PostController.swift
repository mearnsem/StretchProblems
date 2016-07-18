//
//  SubredditController.swift
//  SubredditPost
//
//  Created by Emily Mearns on 7/15/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import Foundation

class PostController {
    
    static let baseUrl = "https://www.reddit.com/r/AskReddit"
    
    static func getPost(searchTerm: String, completion: (posts: [Post]?) -> Void) {
        
        
        guard let url = NSURL(string: baseUrl) else {
            completion(posts: [])
            return
        }
        
        let urlParameters = ["search":"search?q=", "query":"\(searchTerm)"]
        
        NetworkController.performRequestForURL(url, httpMethod: .Get, urlParameters: urlParameters) { (data, error) in
            guard let data = data,
                jsonDictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)) as? [String: AnyObject],
                resultsArray = jsonDictionary["data"] as? [[String: AnyObject]] else {
                    completion(posts: nil)
                    return
            }
            
            var posts = [Post]()
            
            for resultDictionary in resultsArray {
                if let post = Post(dictionary: resultDictionary) {
                    posts.append(post)
                }
            }
            completion(posts: posts)
            return
        }
    }
    
}