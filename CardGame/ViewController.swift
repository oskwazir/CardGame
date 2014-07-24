//
//  ViewController.swift
//  CardGame
//
//  Created by Omer Wazir on 7/22/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBAction func touchCardButton(sender: UIButton) {
        
        if !sender.currentTitle.isEmpty{
            sender.setBackgroundImage(UIImage(named: "cardBack"), forState: UIControlState.Normal)
            sender.setTitle("", forState: UIControlState.Normal)
        } else {
            sender.setBackgroundImage(UIImage(named: "cardFront"), forState: UIControlState.Normal)
            sender.setTitle("A♥︎", forState: UIControlState.Normal)
        }

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

