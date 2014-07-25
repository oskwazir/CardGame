//
//  ViewController.swift
//  CardGame
//
//  Created by Omer Wazir on 7/22/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Would be nice to get a setter on flipCount to update the flipsLable.text
    
    var flipCount:Int = 0
    
    @IBOutlet weak var gameOverLabel: UILabel!
    let playingCardDeck:PlayingCardDeck = PlayingCardDeck()
                            
    @IBOutlet weak var flipsLabel: UILabel!
    
    @IBAction func touchCardButton(sender: UIButton) {
        
        if !gameOverLabel.text.isEmpty {
            return
        }
        
        // Need to safely unwrap this because no text in currentTitle is a nil value

        if sender.currentTitle {
                sender.setBackgroundImage(UIImage(named: "cardBack"), forState: UIControlState.Normal)
                sender.setTitle(nil, forState: UIControlState.Normal)
        } else {
          //a nil will be returned if the deck is finished
          if let card = playingCardDeck.drawRandomCard(){
                sender.setBackgroundImage(UIImage(named: "cardFront"), forState: UIControlState.Normal)
                sender.setTitle(card.content, forState: UIControlState.Normal)
          } else {
             self.gameOverLabel.text = "Game Over"
            }
        }
        
        flipCount++
        self.flipsLabel.text = "Flips: \(self.flipCount)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

