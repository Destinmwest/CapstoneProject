//
//  ViewController.swift
//  FinalProject
//
//  The "home screen", allows users to navigate to different portions of the app
//
//  Created by Destin West on 3/15/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Storyboard UI
    @IBOutlet weak var PickACardButton: UIButton!
    @IBOutlet weak var MeditateButton: UIButton!
    @IBOutlet weak var AngelsButton: UIButton!
    @IBOutlet weak var tenStepsButton: UIButton!
    
    var actionCommunicating = Bool()
    var angelRandomInt = Int()
    
    //loads the ViewControllers views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //erase the Communicating The 10 steps button on initial start
        tenStepsButton.alpha = 0.0
        
        //access custom setGradientBackground UIView extention
        //creates infinite animated gradient
        view.setGradientBackground()
        
        //if the player has reached Communicating The 10 Steps action
        //erase the button to play the angel game
        //present the 10 steps button for them to access as needed
        //when chooses to finish the 10 steps the angel button reappears
        if actionCommunicating == true {
            AngelsButton.alpha = 0.0
            tenStepsButton.alpha = 1.0
        }
    
    }
    
    //the user has pressed the Pick a Card button
    //go to PickACardViewController via goToPickACard segue
    @IBAction func PickACardButtonPressed(_ sender: Any) {
        //self.performSegue(withIdentifier: "goToPickACard", sender: self)
    }
    
    //the user has pressed the Meditate button
    //go to MeditateViewController via goToMeditate segue
    @IBAction func MeditateButtonPressed(_ sender: Any) {
        //self.performSegue(withIdentifier: "goToMeditate", sender: self)
    }
    
    //the user has pressed the Angels button
    //go to AngelGameViewController via goToAngelGame segue
    @IBAction func AngelsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToAngelGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if the segue used is going to the AngelGameViewController
        //make sure a fresh game is started by erasing previous actions chosen
        if segue.identifier == "goToAngelGame" {
            let angelGameViewController = segue.destination as! AngelGameViewController
            angelGameViewController.actionChosen = false
        }
    
        //if the segue used is going to the AngelGameViewController
        //make sure a fresh game is started by erasing previous actions chosen
        if segue.identifier == "goToTenSteps" {
            let communicatingTenStepsViewController = segue.destination as! CommunicatingTenStepsViewController
                communicatingTenStepsViewController.angelRandomInt = self.angelRandomInt
        }
    }
    
    
    
}

