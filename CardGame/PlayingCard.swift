//
//  PlayingCard.swift
//  CardGame
//
//  Created by Omer Wazir on 7/23/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import Foundation

class PlayingCard:Card{
    
    let suit:String?
    
    let rank:Int?
    
    // validSuits and rankStrings are type properties.
    // No need for individual instances to dupe these properties
    class var validSuits:[String] {
    return ["\u{2665}","\u{2666}","\u{2663}","\u{2660}"]
    }
    
    class var rankStrings:[String] {
    return ["?","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    public override var contents:String {
    get {
        return "\(PlayingCard.rankStrings[self.rank!])\(self.suit!)"
    }
    }
    
    init(suit:String,rank:Int){
        super.init()
        if(contains(PlayingCard.validSuits, suit)){
            self.suit = suit;
        }
        
        self.rank = rank;
    }
    
    class func maxRank() -> Int {
        return PlayingCard.rankStrings.count - 1
    }
}
