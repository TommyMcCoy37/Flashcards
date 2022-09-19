//
//  ViewController.swift
//  Flashcards
//
//  Created by Tommy McCoy on 9/7/22.
//

import UIKit

class ViewController: UIViewController {

    // Flash card container.
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    // Button controls.
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    @IBOutlet weak var optionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Styles and adds shadow to the card container.
        card.layer.cornerRadius = 20
        card.layer.shadowRadius = 20.0
        card.layer.shadowOpacity = 0.5

        // Styles the labels to have a nice rounded edge.
        frontLabel.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        
        backLabel.layer.cornerRadius = 20.0
        backLabel.clipsToBounds = true
        
        // Styles the buttons.
        optionOne.layer.borderWidth = 2
        optionOne.layer.cornerRadius = 20
        optionOne.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        optionTwo.layer.borderWidth = 2
        optionTwo.layer.cornerRadius = 20
        optionTwo.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        optionThree.layer.borderWidth = 2
        optionThree.layer.cornerRadius = 20
        optionThree.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        
    }
    
    // Toggling the isHidden state to reveal the card.
    @IBAction func didTapFlashCard(_ sender: Any) {
        frontLabel.isHidden = !frontLabel.isHidden
    }
    
    // Answer choice button functions.
    @IBAction func pressBtnOne(_ sender: Any) {
        optionOne.isHidden = true
    }
    
    // Reveals the correct answer and hides the wrong answer choices.
    @IBAction func pressBtnTwo(_ sender: Any) {
        frontLabel.isHidden = true
        optionOne.isHidden = true
        optionThree.isHidden = true
    }
    
    // Answer choice button functions.
    @IBAction func pressBtnThree(_ sender: Any) {
        optionThree.isHidden = true
    }
    
}

