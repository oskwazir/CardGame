//
//  Deck.swift
//  CardGame
//
//  Created by Omer Wazir on 7/23/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import Foundation

//a class for a deck of any kind of card
class Deck{
    
    private var cards:[Card] = []
    
    func addCard(#card:Card, isAtTop:Bool = false){
        
        if isAtTop {
            self.cards.insert(card, atIndex:0);
        } else {
            self.cards.append(card);
        }
    }
    
    func drawRandomCard() -> Card{
        let index = random() % self.cards.count
        let randomCard:Card = self.cards[index]
        self.cards.removeAtIndex(index);
        
        return randomCard;
    }
}
