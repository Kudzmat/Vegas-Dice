//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBoutlet allows me to reference a UI element
    // hold control and drag element to code
    
    // left dice
    @IBOutlet weak var diceImageView1: UIImageView!
    
    // right dice
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    // this code will be triggered by the user's interaction with the button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // using random to roll a side for the dice
        var leftDiceNumber = Int.random(in: 0...5)
        //var rightDiceNumber = Int.random(in: 0...5)
        
        // array of all possible dice displays
        // the array is a let constant because it will not change
        let diceSides = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageView1.image =  diceSides[leftDiceNumber]
        
        diceImageView2.image = diceSides.randomElement() // another way of using random
        
    }
    
}

