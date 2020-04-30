//
//  AngelGameViewController.swift
//  FinalProject
//
//  handles the logic and views to spin the wheel used for selecting an Angel for the user
//  presents two different popups, depending on where the user is in the game
//  *contains far too much logic code, redundant code, breaks MVC design*
//
//  Created by Destin West on 3/22/20.
//  Copyright © 2020 Destin West. All rights reserved.
//
//  Much of this code should be moved to classes of their own to facilitate MVC design
//

import UIKit

class AngelGameViewController: UIViewController {
    
    //Storyboard: AngelGameViewController UI
    @IBOutlet weak var wheelLabel: UIImageView!
    @IBOutlet weak var spinWheelButton: UIButton!
    @IBOutlet weak var spinWheelButtonShadow: UIView!
    @IBOutlet weak var backgroundBlur: UIVisualEffectView!
    
    //Storyboard: popup UI
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var popupLabel: UILabel!
    @IBOutlet weak var popupAngelNameLabel: UILabel!
    @IBOutlet weak var popupText: UITextView!
    @IBOutlet weak var popupSpinAgainButton: UIButton!
    @IBOutlet weak var popupGoToActionsButton: UIButton!
    
    //Storyboard: action has been chosen popup UI
    @IBOutlet weak var actionChosenPopupView: UIView!
    @IBOutlet weak var actionChosenPopupLabel: UILabel!
    @IBOutlet weak var actionChosenPopupAngelNameLabel: UILabel!
    @IBOutlet weak var actionChosenPopupText: UITextView!
    @IBOutlet weak var actionChosenSpinAgainButton: UIButton!
    @IBOutlet weak var actionChosenResponseButton: UIButton!
    
    //used to instantiate the Blur Effect after the wheel is spun
    var effect:UIVisualEffect!
    //used for randomly selecting an Angel
    var randomInt = Int()
    //Angel struct object
    var angel = AngelArray()
    //Action struct object
    var action = ActionArray()
    //boolean for actionchoosen
    var actionChosen = Bool()
    //action number
    var actionRandomInt = Int()
    //move around the action wheel to the left or right
    var moveToTheLeft = Bool()
    //a collection of chosen actions (action number array)
    var actionsArray: [Int] = []
    
    //loads the ViewControllers views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //save the blur effect and turn it off
        effect = backgroundBlur.effect
        backgroundBlur.effect = nil
        
        //make the square wheel label image round
        wheelLabel.layer.cornerRadius = wheelLabel.frame.size.width / 2.2
        
    }
    
    //when the button is pressed to spin the wheel:
    //  call spinWheel function (MVC dictates this should be in Model folder)
    //  hide spin button
    //  wait 5.5 seconds for pop up view with results of wheel spin
    @IBAction func spinWheelButtonPressed(_ sender: UIButton) {
        spinWheel(self)
        spinWheelButton.isHidden = true
        if actionChosen == false {
            perform(#selector(self.loadPopupView), with: nil, afterDelay: 5.5)
        }
        else {
            perform(#selector(self.loadActionChosenPopupView), with: nil, afterDelay: 5.5)
        }
    }
    
    //select a random number that is used to spin the wheel and select an angel
    func spinWheel(_ sender: Any) {
        randomInt = Int.random(in: 9...20)
        //animates the spinning of the wheel
        UIView.animate(withDuration: 5.0, delay: 0, options: .curveEaseOut, animations: {
            //for loops allows for multiple rotations of the wheel
            for i in 1...self.randomInt {
                self.wheelLabel.transform = CGAffineTransform(rotationAngle: CGFloat(i))
            }
        })
    }
    
    //popup containing results of wheel spin, which Angel was selected and their description
    //most of this functionality should be in its own struct to facilitate MVC design
    @objc func loadPopupView() {
        //angel information
        let angelName = angel.getAngelName(randomInt)
        let angelDescription = angel.getAngelDescription(randomInt)
        
        //add angel information to popup
        popupAngelNameLabel.text = angelName
        popupText.text = angelDescription + "\n\n " + angelName + " will respond to your question once you've spun the action wheel."
        
        //set title of buttons on popup
        //programmatic approach, seperate from Storyboard implementation
        popupSpinAgainButton.setTitle("Spin Again", for: .normal)
        popupGoToActionsButton.setTitle("Go To Actions", for: .normal)
                
        //positioning of popup
        popupView.center.x = self.view.center.x
        popupView.center.y = self.view.center.y
        
        //add popup to View
        popupView.alpha = 1.0
        view.addSubview(popupView)
        
        //animate how the popup appears,
        //starts at twice its size and shrinks to actual over 0.4 seconds
        //applies blur
        popupView.transform = CGAffineTransform.init(scaleX: 2.0, y: 2.0)
        UIView.animate(withDuration: 0.4){
            self.backgroundBlur.effect = self.effect
            self.popupView.transform = CGAffineTransform.identity
        }
    }
    
    //popup containing results of wheel spin, which Angel was selected and their description
    //takes user to response, skipping the action wheel portion of the game
    @objc func loadActionChosenPopupView() {
        //get the next action for the user
        nextAction()
        //angel information
        let angelName = angel.getAngelName(randomInt)
        let angelDescription = angel.getAngelDescription(randomInt)
        
        //add angel information to popup
        actionChosenPopupLabel.text = angelName
        actionChosenPopupText.text = angelDescription + "\n\n " + angelName + " is ready with your response."
        
        //set title of buttons on popup
        //programmatic approach, seperate from Storyboard implementation
        actionChosenSpinAgainButton.setTitle("Spin Again", for: .normal)
        actionChosenResponseButton.setTitle("Get Response", for: .normal)
        
        //positioning of popup
        actionChosenPopupView.center.x = self.view.center.x
        actionChosenPopupView.center.y = self.view.center.y
        
        //add popup to View
        actionChosenPopupView.alpha = 1.0
        view.addSubview(actionChosenPopupView)
        
        //animate how the popup appears,
        //starts at twice its size and shrinks to actual over 0.4 seconds
        //applies blur
        actionChosenPopupView.transform = CGAffineTransform.init(scaleX: 2.0, y: 2.0)
        UIView.animate(withDuration: 0.4){
            self.backgroundBlur.effect = self.effect
            self.actionChosenPopupView.transform = CGAffineTransform.identity
        }
        
    }
    
    //used when the action wheel has already been spun by the user
    //the user will receive the next action on the wheel rather than spinning again
    func nextAction() {
        //if the user has chosen to move around the wheel to the left
        if moveToTheLeft == true {
            if action.getActionNumber(actionRandomInt) > 0 {
                actionRandomInt = action.getActionCase(action.getActionNumber(actionRandomInt)-1)
            }
            else{
                //if the user plays through every action they will end with this action
                actionRandomInt = 12
            }
        }
        //the user has chosen to move around the wheel to the right
        else {
            if action.getActionNumber(actionRandomInt) < 6 {
                actionRandomInt = action.getActionCase(action.getActionNumber(actionRandomInt)+1)
            }
            else {
                //if the user plays through every action they will end with this action
                actionRandomInt = 12
            }
            
        }
    }
    
    //functionality handled in Storyboard, goes to ResponseViewController
    @IBAction func actionChosenResponseButtonPressed(_ sender: Any) {
    }
    
    //spin again button from pop up, allows the user to select another Angel
    @IBAction func spinAgainButtonPressed(_ sender: Any) {
        //fade out popup, spin button re-appears, erase blur
        UIView.animate(withDuration: 0.5) {
            self.popupView.alpha = 0.0
            self.actionChosenPopupView.alpha = 0.0
            self.spinWheelButton.isHidden = false
            self.backgroundBlur.effect = nil
        }
    }
    
    //segue is handle via the Storyboard
    @IBAction func goToActionsButtonPressed(_ sender: Any) {
        //code for programatically handling the segue, caused issues with view presentations
        //self.performSegue(withIdentifier: "goToActions", sender: self)
    }
    
    //passing data between ViewControllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if the segue used is going to the ActionsViewController
        //pass the number for the angel
        if segue.identifier == "goToActions" {
            let actionsViewController = segue.destination as! ActionsViewController
            actionsViewController.angelRandomInt = self.randomInt
        }
        //if the segue used is going to ResponseViewController
        //pass number for angel, action and actionChosen boolean
        if segue.identifier == "actionChosenGoToResponse" {
            let responseViewController = segue.destination as! ResponseViewController
            responseViewController.angelRandomInt = self.randomInt
            responseViewController.actionRandomInt = self.actionRandomInt
            responseViewController.actionChosen = true
        }
        
    }
    
}
    
    
    
// Code for using reusable xib view (best practices)
// couldn't get it to function properly but saved it for future attempts
// as I believe its the way I should go
//    @objc func loadXib() {
//
//        let angelName = angelArray.getAngelName(randomInt)
//        let angelDescription = angelArray.getAngelDescription(randomInt)
//
//        xibView.XibBackground.setGradientBackground()
//        xibView.XibLabel.text = "Your Angel is " + angelName
//        xibView.XibTextView.text = angelDescription
//
//        xibView.center = self.view.center
//        xibView.layer.borderColor = UIColor.white.cgColor
//        xibView.layer.borderWidth = 10.0
//        xibView.layer.cornerRadius = 12
//        xibView.layer.masksToBounds = true
//
//        xibView.XibButton01.setTitle("Spin Again", for: .normal)
//        xibView.XibButton02.setTitle("Go To Actions", for: .normal)
//
//
//
//        view.addSubview(xibView)
//
//        xibView.transform = CGAffineTransform.init(scaleX: 2.0, y: 2.0)
//        xibView.alpha = 0
//
//        UIView.animate(withDuration: 0.4){
//            self.backgroundBlur.effect = self.effect
//            self.xibView.alpha = 1
//            self.xibView.transform = CGAffineTransform.identity
//
//        }
//
//        xibView.XibButton01.addTarget(self, action: #selector(AngelGameViewController.spinAgainButtonPressed(sender:)), for: .allEvents)
//        xibView.XibButton02.addTarget(self, action: #selector(AngelGameViewController.goToActionsButtonPressed(sender:)), for: .allEvents)
//    }
//
//    @objc func spinAgainButtonPressed (sender:UIButton) {
//
//        UIView.animate(withDuration: 0.5, delay: 0, animations: {self.xibView.alpha = 0.0})
//        spinWheelButton.isHidden = false
//        backgroundBlur.effect = nil
//    }
//
//    @IBAction func goToActionsButtonPressed (sender:UIButton) {
//
//        xibView.removeFromSuperview()
//
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//
//        guard let actionsViewController = mainStoryboard.instantiateViewController(withIdentifier: "ActionsViewController") as? ActionsViewController
//            else {
//                print("oops")
//                return
//            }
//
//        actionsViewController.modalTransitionStyle = .coverVertical
//
//        present(actionsViewController, animated: true)
//
//    }
    
    //try to figure out swipes


