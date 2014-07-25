//
//  Deck.swift
//  CardGame
//
//  Created by Omer Wazir on 7/24/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import Foundation

class Deck{
    
    private var cards:[Card] = []
    
    func addCard(#card:Card, isAtTop:Bool = false){
        
        if isAtTop {
            self.cards.insert(card, atIndex:0);
        } else {
            self.cards.append(card);
        }
    }
    
    func drawRandomCard() -> Card?{
        let index = Int(arc4random_uniform(UInt32(self.cards.count)))
        //once cards are exhausted need to return nil
        if self.cards.isEmpty {
            return nil
        }
        let randomCard:Card = self.cards[index]
        self.cards.removeAtIndex(index);
        
        return randomCard;
    }
}