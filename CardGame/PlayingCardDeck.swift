//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Omer Wazir on 7/24/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import Foundation

class PlayingCardDeck: Deck{
    
    init() {
        super.init()
        for suit:String in PlayingCard.validSuits{
            for(var rank = 1; rank <= PlayingCard.maxRank();rank++){
                let card:PlayingCard = PlayingCard(suit: suit, rank: rank)
                self.addCard(card: card)
            }
        }
    }
}
