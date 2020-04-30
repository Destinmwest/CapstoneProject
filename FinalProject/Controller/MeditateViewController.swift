//
//  MeditateViewController.swift
//  FinalProject
//
//  ViewController for the Meditate portion of the app
//  White view shrinks to a small focal point surrounded by a dark gradient
//  White view slowly grows over time while the meditation instructions are played
//
//  Created by Destin West on 3/22/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit
import AVFoundation

class MeditateViewController: UIViewController {
    //Storyboard UI
    @IBOutlet weak var lightView: UIView!
    @IBOutlet weak var startMeditationButton: UIButton!
    @IBOutlet weak var returnHomeButton: UIButton!
    
    //player for the recorded meditation
    var player: AVAudioPlayer!
    
    //loads the viewControllers views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set background to light blue
        lightView.backgroundColor = UIColor(hue: 0.5556, saturation: 0.25, brightness: 1, alpha: 1.0) /* #bfe9ff */ /* #6dd5ed */
        //access custom setGradientBackground UIView extention
        //creates animated gradient
        view.setMeditateGradientBackground()
        
        //shape and animate blue view
        lightView.layer.cornerRadius = lightView.frame.width/2
        lightView.transform = CGAffineTransform(scaleX: 200, y: 200)

    }
    
    //call the startMeditation function
    @IBAction func startMeditationButtonPressed(_ sender: Any) {
        startMeditation()
        playSound()
    }
    
    //begin play meditation instructions
    //shrink white view to focal point
    //slowly grow white view to full screen
    @objc func startMeditation() {
        startMeditationButton.alpha = 0.0
        UIView.animate(withDuration: 3.0){
            self.lightView.transform = CGAffineTransform.identity
        }
        //the meditation is 425 seconds long
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0){
            UIView.animate(withDuration: 425.0){
                self.lightView.transform = CGAffineTransform(scaleX: 200, y: 200)
            }
        }
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "angelMeditation", withExtension: ".mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

    @IBAction func hoHomeButtonPressed(_ sender: Any) {
        player.stop()
    }
}
