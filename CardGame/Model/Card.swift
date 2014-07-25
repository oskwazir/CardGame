//
//  Card.swift
//  CardGame
//
//  Created by Omer Wazir on 7/24/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import Foundation

class Card{
    
    var content:String = ""
    
    var chosen:Bool = false;
    var matched:Bool = false;
    
    func matchOtherCards(otherCards:[Card]) -> (Int){
        var score = 0;
        
        for card in otherCards{
            if(card.content == self.content){
                score = 1;
            }
        }
        
        return score
        
    }
    
}