//
//  CustomButton.swift
//  FinalProject
//
//  custom button styling, for rounded corners and shadow
//  *don't think this is the best solution for these affects*
//
//  Created by Destin West on 4/9/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    //system level function, similar to viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //hides shadow when true
        self.layer.masksToBounds = false
        //rounds button corners
        self.layer.cornerRadius = 10
        //shadow color = black
        self.layer.shadowColor = UIColor.black.cgColor
        // draw the path of the shadow utilizing Swift's core graphics API
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
        // moves the shadow offset down and right a bit
        self.layer.shadowOffset = CGSize(width: 1.0, height: 2.0)
        // lighten the shadow
        self.layer.shadowOpacity = 0.5
        // size of the shadow
        self.layer.shadowRadius = 1.5
    }

//  function for possible future use
//  shakes the button slightly when tapped
//
//    func setShake () {
//        let shake = CABasicAnimation(keyPath: "position")
//        shake.duration = 0.1
//        shake.repeatCount = 2
//        shake.autoreverses = true
//
//        let fromPoint = CGPoint(x: center.x - 4, y: center.y)
//        let fromValue = NSValue(cgPoint: fromPoint)
//
//        let toPoint = CGPoint(x: center.x + 4, y: center.y)
//        let toValue = NSValue(cgPoint: toPoint)
//
//        shake.fromValue = fromValue
//        shake.toValue = toValue
//        layer.add(shake, forKey: "position")
//    }
    
    
}
