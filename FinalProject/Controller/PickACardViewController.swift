//
//  PickACardViewController.swift
//  FinalProject
//
//  ViewController for the Pick A Card portion of the app
//  Gives the user a choice between a random word and a random phrase
//  that is then presented in a popup
//
//  *could possibly reduce redundant code*
//
//  Created by Destin West on 3/22/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class PickACardViewController: UIViewController{
    
    //Storyboard UI
    @IBOutlet weak var aWordButton: UIButton!
    @IBOutlet weak var aPhraseButton: UIButton!
    @IBOutlet weak var returnHomeButton: UIButton!
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var popupText: UITextView!
    @IBOutlet weak var getAnotherButton: UIButton!
    
    //Instatiate Word and Phrase objects
    var word = oneWordArray()
    var phrase = phraseArray()
    
    //loads the viewControllers views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the animated gradient background
        view.setGradientBackground()
    }
    
    @IBAction func aWordButtonPressed(_ sender: Any) {
        wordPopupView()
    }
    @IBAction func aPhraseButtonPressed(_ sender: Any) {
        phrasePopupView()
    }
    @IBAction func getAnotherButtonPressed(_ sender: Any) {
        popupView.alpha = 0.0
    }
    
    func wordPopupView() {
        
        //random word
        popupText.text = word.getAWord()
        
        //position the popup in the center of the view
        popupView.center.x = self.view.center.x
        popupView.center.y = self.view.center.y
        
        //set the animated gradient background
        popupView.setGradientBackground()
        
        //add popup to View
        popupView.alpha = 1.0
        view.addSubview(popupView)
        
        //animate how the popup appears,
        //starts at twice its size and shrinks to actual over 0.4 seconds
        //applies blur
        popupView.transform = CGAffineTransform.init(scaleX: 2.0, y: 2.0)
        UIView.animate(withDuration: 0.4){
            self.popupView.transform = CGAffineTransform.identity
        }
    }
    
    func phrasePopupView() {
        
        //random phrase
        popupText.text = phrase.getAPhrase()
        
        //position the popup in the center of the view
        popupView.center.x = self.view.center.x
        popupView.center.y = self.view.center.y
        
        //set the animated gradient background
        popupView.setGradientBackground()
        
        //add popup to View
        popupView.alpha = 1.0
        view.addSubview(popupView)
        
        //animate how the popup appears,
        //starts at twice its size and shrinks to actual over 0.4 seconds
        //applies blur
        popupView.transform = CGAffineTransform.init(scaleX: 2.0, y: 2.0)
        UIView.animate(withDuration: 0.4){
            self.popupView.transform = CGAffineTransform.identity
        }
    }
    
}
