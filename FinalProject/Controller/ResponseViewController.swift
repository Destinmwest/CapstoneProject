//
//  ResponseViewController.swift
//  FinalProject
//
//  Presents the response the the Angel, a combination of a response from an angel object
//  and an actions from an action object. Allow user to finish the game or to continue
//  choosing more angels for more responses until the final step of Communicating is reached
//
//  Created by Destin West on 3/22/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class ResponseViewController: UIViewController {
    //Storyboard UI
    @IBOutlet weak var responseImageView: UIImageView!
    @IBOutlet weak var responseTextView: UITextView!
    @IBOutlet weak var playSomeMore: UIButton!
    @IBOutlet weak var finish: UIButton!
    @IBOutlet weak var playSomeMoreRight: UIButton!
    @IBOutlet weak var tenStepsButton: UIButton!
    
    //angel number
    var angelRandomInt = Int()
    //action number
    var actionRandomInt = Int()
    //action object
    var action = ActionArray()
    //angel object
    var angel = AngelArray()
    //boolean for actionchoosen
    var actionChosen = Bool()
    //boolean for "Communicating 10 steps" action (special case)
    var actionCommunicating = Bool()
    
    //loads the viewControllers views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set animated gradient background
        view.setGradientBackground()
        
        //hide buttons
        playSomeMore.alpha = 0.0
        playSomeMoreRight.alpha = 0.0
        finish.alpha = 0.0
        tenStepsButton.alpha = 0.0
        
        //show the angels response after a 2 second delay
        perform(#selector(self.showResponse), with: nil, afterDelay: 2.0)
    }
    
    //show the user the response from the angel
    @objc func showResponse() {
        //if the action is special case, "Communicating ten steps" set the boolean
        if action.getActionNumber(actionRandomInt) == 6 {
            actionCommunicating = true
        }
        
        //fade out the angel image
        UIView.animate(withDuration: 0.5) {
            self.responseImageView.alpha = 0.0
        }
        
        //fade in the Angels response
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            //if action is not special case "Communicating ten steps"
            if self.actionCommunicating == false {
                //fade in angel info, action info and response after .5 seconds
                UIView.animate(withDuration: 0.5) {
                    self.responseTextView.text = "Having received your action: \n" + self.action.getActionName(self.actionRandomInt) + "\n\n" + self.angel.getAngelName(self.angelRandomInt) + " has responded: \n\"" + self.angel.getAngelAction(self.angelRandomInt) + self.action.getAction(self.actionRandomInt) + "\" \n\n You may continue playing by returning to spin the Angel wheel. If you continue to play you will no longer spin the action wheel so, you must choose to proceed around the wheel to the left or to the right."
                }
                //show the buttons for continuing after 3.33 seconds (my moms number)
                self.perform(#selector(self.showButtons), with: nil, afterDelay: 3.33)
            }
            else {
                //action is special case "communicating ten steps" fade in text after .5 seconds
                UIView.animate(withDuration: 0.5) {
                    self.responseTextView.text = "Your action is \"Communicating: The 10 Steps.\" You will no longer continue choosing new Angels and receiving new actions. Click the \"10 steps\" button below to proceed with this action."
                }
                //show the buttons for continuing after 3.33 seconds (my moms number)
                self.perform(#selector(self.communicatingTenStepsButton), with: nil, afterDelay: 3.33)
            }
        }
    }
    
    //fade in different sets of buttons, depending on the users progress, for continuing the game
    @objc func showButtons() {
        //buttons for first time through the game
        if actionChosen == false {
            UIView.animate(withDuration: 0.5) {
                self.playSomeMore.alpha = 1.0
                self.playSomeMoreRight.alpha = 1.0
                self.finish.alpha = 1.0
                self.tenStepsButton.alpha = 0.0
            }
        }
        //buttons for responses after initial response
        else {
            //move button to center of screen and leave other invisible
            self.playSomeMore.center.x = self.playSomeMore.center.x + 105
            UIView.animate(withDuration: 0.5) {
                self.finish.alpha = 1.0
                self.playSomeMore.setTitle("Continue", for: .normal)
                self.playSomeMore.alpha = 1.0
                self.tenStepsButton.alpha = 0.0
            }
        }
    }
    
    //special case buttons for final action "communicating 10 steps"
    @objc func communicatingTenStepsButton() {
        UIView.animate(withDuration: 0.5) {
            self.tenStepsButton.alpha = 1.0
            self.playSomeMore.alpha = 0.0
            self.playSomeMoreRight.alpha = 0.0
            self.finish.alpha = 1.0
        }
    }
    
    //functionality handled in Storyboard, goes to AngelGameViewController
    @IBAction func playSomeMoreButtonPressed(_ sender: Any) {
    }
    
    //functionality handled in Storyboard, goes to ViewController (home screen)
    @IBAction func finishButtonPressed(_ sender: Any) {
    }
    
    //passing data between ViewControllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if the segue used is going to AngelGameController "from left", pass the data
        if segue.identifier == "goBackToTheLeft" {
            let angelGameViewController = segue.destination as! AngelGameViewController
            angelGameViewController.actionRandomInt = self.actionRandomInt
            angelGameViewController.actionChosen = true
            angelGameViewController.moveToTheLeft = true
        }
        //if the segue used is going to AngelGameController "from right", pass the data
        if segue.identifier == "goBackToTheRight" {
            let angelGameViewController = segue.destination as! AngelGameViewController
            angelGameViewController.actionRandomInt = self.actionRandomInt
            angelGameViewController.actionChosen = true
            angelGameViewController.moveToTheLeft = false
        }
        //if the segue used is for special case "communicating ten steps", pass the data

        if segue.identifier == "goToCommunicatingTenSteps" {
            let communicatingTenStepsViewController = segue.destination as! CommunicatingTenStepsViewController
                communicatingTenStepsViewController.angelRandomInt = self.angelRandomInt
        }
    }
}
