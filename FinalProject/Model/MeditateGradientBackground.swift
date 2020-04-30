//
//  MeditateGradientBackground.swift
//  FinalProject
//
//  An animated gradient background using dark colors for Meditate background
//
//  Created by Destin West on 4/11/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

extension UIView {
    
    func setMeditateGradientBackground() {
        
        let darkBlue = UIColor(red: 0.0627, green: 0, blue: 0.4784, alpha: 1.0) /* #10007a */
        let darkGreen = UIColor(red: 0.0706, green: 0.2078, blue: 0, alpha: 1.0) /* #123500 */
        let darkYellow = UIColor(red: 0.2275, green: 0.1843, blue: 0, alpha: 1.0) /* #3a2f00 */
        let darkRed = UIColor(red: 0.2588, green: 0.0157, blue: 0, alpha: 1.0) /* #420400 */
        let darkPurple = UIColor(red: 0.1765, green: 0, blue: 0.1686, alpha: 1.0) /* #2d002b */
    
        //creating the gradients: orientation, direction, colors, start and end points
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.startPoint = CGPoint(x:0.0, y:0.0)
        gradient.endPoint = CGPoint(x:1.0, y:1.0)
        gradient.colors = [darkBlue.cgColor, darkGreen.cgColor, darkYellow.cgColor, darkRed.cgColor, darkPurple.cgColor]
        gradient.locations =  [-0.5, 1.5]
        
        //animating and cycling through gradients
        let animation = CABasicAnimation(keyPath: "colors")
        animation.fromValue = [darkBlue.cgColor, darkGreen.cgColor, darkYellow.cgColor, darkRed.cgColor, darkPurple.cgColor]
        animation.toValue = [darkPurple.cgColor, darkRed.cgColor, darkYellow.cgColor, darkGreen.cgColor, darkBlue.cgColor]
        animation.duration = 10.0
        animation.autoreverses = true
        animation.isRemovedOnCompletion = false
        animation.repeatCount = Float.infinity
        
        //add gradient to UIView
        gradient.add(animation, forKey: nil)
        layer.insertSublayer(gradient, at: 0)
        
    }
    
}
