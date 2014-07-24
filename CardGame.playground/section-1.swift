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


