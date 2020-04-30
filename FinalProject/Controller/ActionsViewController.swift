//
//  ActionsViewController.swift
//  FinalProject
//
//  handles the logic and views to spin the wheel used for selecting an Action for the user
//  presents a popup with the action chosen and its description, allows user to move to response view
//  *contains far too much logic code, redundant code, breaks MVC design*
//
//  Created by Destin West on 3/22/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class ActionsViewController: UIViewController {
    
    //Storyboard UI
    @IBOutlet weak var spinButton: CustomButton!
    @IBOutlet weak var actionWheel: UIImageView!
    
    //Storyboard: popup UI
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var popupLabel: UILabel!
    @IBOutlet weak var popupActionNameLabel: UILabel!
    @IBOutlet weak var popupActionDescriptionText: UITextView!
    @IBOutlet weak var goToAngelResponseButton: UIButton!
    @IBOutlet weak var backgroundBlur: UIVisualEffectView!
    
    
    //used to instantiate the Blur Effect after the wheel is spun
    var effect: UIVisualEffect!
    //used for randomly selecting an Action
    var randomInt = Int()
    //random int from AngelGame wheel spin
    var angelRandomInt = Int()
    //boolean for actionchoosen
    var actionChosen = false
    //actions struct
    var action = ActionArray()
    
    //loads ViewController views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //save the blur effect and turn it off
        effect = backgroundBlur.effect
        backgroundBlur.effect = nil
    }
    
    //spin the action wheel, hide the spin button, and present popup after a 5.5 second delay
    @IBAction func spinButtonPressed(_ sender: CustomButton) {
        spinWheel(self)
        spinButton.isHidden = true
        perform(#selector(self.loadPopupView), with: nil, afterDelay: 5.5)
    }
    
    //select a random number that is used to spin the wheel and select an action
    func spinWheel(_ sender: Any) {
        randomInt = Int.random(in: 9...21)

        UIView.animate(withDuration: 5.0, delay: 0, options: .curveEaseOut, animations: {
            for i in 1...self.randomInt {
                self.actionWheel.transform = CGAffineTransform(rotationAngle: CGFloat(i))
            }
        })
    }
    
    //popup containing results of wheel spin, which Angel was selected and their description
    //most of this functionality should be in its own struct to facilitate MVC design
    //and reduce redundant code
    @objc func loadPopupView() {
        //information for action chosen
        popupActionNameLabel.text = action.getActionName(randomInt)
        popupActionDescriptionText.text = action.getActionDescription(randomInt)
        
        //add title to popup button
        goToAngelResponseButton.setTitle("Receive your response", for: .normal)

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
    
    @IBAction func goToAngelResponseButtonPressed(_ sender: Any) {
        //handled in the storyboard
    }
    
    //passing data between ViewControllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if the segue used is going to the ActionsViewController, pass the data
        if segue.identifier == "goToResponse" {
            let responseViewController = segue.destination as! ResponseViewController
            responseViewController.angelRandomInt = self.angelRandomInt
            responseViewController.actionRandomInt = self.randomInt
        }
    }
    
    
}
