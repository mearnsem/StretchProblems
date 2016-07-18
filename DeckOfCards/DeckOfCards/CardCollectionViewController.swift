//
//  CardCollectionViewController.swift
//  DeckOfCards
//
//  Created by Emily Mearns on 7/18/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cardCell"

class CardCollectionViewController: UICollectionViewController {
    
    var cards: [Card] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        CardController.fetchDeck(52) { (cards) in
            
            
        }

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
    
        return cell
    }

}
