//
//  SetGradientBackground.swift
//  FinalProject
//
//  An animated gradient background used in much of the app
//  works to set the color theme of the app, bring a consistent feeling
//
//  Created by Destin West on 4/1/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

extension UIView {
    
    func setGradientBackground() {
        
        //my custom colors
        let pink = UIColor(red: 1, green: 0.5569, blue: 0.9843, alpha: 1.0) /* #ff8efb */
        let orange = UIColor(red: 0.9882, green: 0.6471, blue: 0.502, alpha: 1.0) /* #fca580 */
        let purple = UIColor(red: 0.8, green: 0.5804, blue: 0.9882, alpha: 1.0) /* #cc94fc */
        let yellow = UIColor(red: 0.9882, green: 0.9451, blue: 0.3255, alpha: 1.0) /* #fcf153 */
        let red = UIColor(red: 1, green: 0.549, blue: 0.549, alpha: 1.0) /* #ff8c8c */
    
        //creating the gradients: orientation, direction, colors, start and end points
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.startPoint = CGPoint(x:0.0, y:0.0)
        gradient.endPoint = CGPoint(x:1.0, y:1.0)
        gradient.colors = [purple.cgColor, red.cgColor, orange.cgColor, yellow.cgColor, pink.cgColor]
        gradient.locations =  [-0.5, 1.5]
        
        //animating and cycling through gradients
        let animation = CABasicAnimation(keyPath: "colors")
        animation.fromValue = [purple.cgColor, red.cgColor, orange.cgColor, yellow.cgColor, pink.cgColor]
        animation.toValue = [pink.cgColor, yellow.cgColor, orange.cgColor, red.cgColor, purple.cgColor]
        animation.duration = 10.0
        animation.autoreverses = true
        animation.isRemovedOnCompletion = false
        animation.repeatCount = Float.infinity
        
        //add gradient to UIView
        gradient.add(animation, forKey: nil)
        layer.insertSublayer(gradient, at: 0)
        
    }
    
}
