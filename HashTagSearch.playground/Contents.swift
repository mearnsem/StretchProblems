//: Playground - noun: a place where people can play

import UIKit

class Restaurant {
    var name: String
    var streetAddress: String
    var city: String
    var state: String
    var reviews: [Review]
    
    var hashtags: [String] {
        var hashArray: [String] = []
        for i in reviews {
            for hash in i.hashtags {
                hashArray.append(hash)
            }
        }
        return hashArray
    }
    
    init(name: String, streetAddress: String, city: String, state: String, reviews: [Review]) {
        self.name = name
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.reviews = reviews
    }
}

class Review {
    var username: String
    var text: String
    
    var hashtags: [String] {
        let words = text.componentsSeparatedByString(" ")
        var hashtagArray: [String] = []
        
        for word in words {
            if word.hasPrefix("#") {
                hashtagArray.append(word)
            }
        }
        return hashtagArray
    }
    
    init(username: String, text: String) {
        self.username = username
        self.text = text
    }
}

let c1 = Review(username: "em", text: "Get the #b-town and a million #sugarcookies")
let c2 = Review(username: "cam", text: "The cookies are straight #deloicious")
let cutlers = Restaurant(name: "Cutlers", streetAddress: "500 S", city: "Bountiful", state: "UT", reviews: [c1, c2])

let l1 = Review(username: "kent", text: "Get the stinky cheese!")
let l2 = Review(username: "em", text: "#garlicfries")
let lucky13 = Restaurant(name: "Lucky 13", streetAddress: "By the Bees Stadium", city: "SLC", state: "UT", reviews: [l1, l2])

print(c1.hashtags)
print(c2.hashtags)

print(cutlers.hashtags)
