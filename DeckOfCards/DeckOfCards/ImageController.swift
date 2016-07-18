//
//  ImageController.swift
//  DeckOfCards
//
//  Created by Emily Mearns on 7/18/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import Foundation
import UIKit

class ImageController {
    
    static func imageForURL(url: String, completion: ((image: UIImage?) -> Void)) {
        
        let imageSearchUrl = "URL HERE"
        
        guard let url = NSURL(string: imageSearchUrl + url) else {
            fatalError("Image URL optional is nil")
        }
        
        NetworkController.performRequestForURL(url, httpMethod: .Get) { (data, error) in
            guard let data = data else {
                completion(image: nil)
                return
            }
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                completion(image: UIImage(data: data))
            })
        }
    }
}