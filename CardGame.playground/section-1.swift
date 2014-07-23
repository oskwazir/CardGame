// Playground - noun: a place where people can play

import UIKit


// a class for a generic card
class Card{
    
    let contents:String = ""
    
    var chosen:Bool = false;
    var matched:Bool = false;
    
    func matchOtherCards(otherCards:[Card]) -> (Int){
        var score = 0;
        
        for card in otherCards{
            if(card.contents == self.contents){
                score = 1;
            }
        }
        
      return score
    
    }

}

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

//a subclass of Card
class PlayingCard:Card{

    let suit:String?
    
    let rank:Int?
    
    override var contents:String {
        get {
            return "\(self.rank)\(self.suit)"
        }
    }
    
    init(suit:String,rank:Int){
        super.init()
        self.suit = suit;
        self.rank = rank;
    }
    

    
}