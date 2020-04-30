//
//  CustomPopup.swift
//  FinalProject
//
//  styling for pop up used throughout the app
//
//  Created by Destin West on 4/9/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

import UIKit

class customPopup: UIView {
    
    //system level function, similar to viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //styling of popup's background, shadow and border
        self.setGradientBackground()
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 1.0, height: 2.0)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 1.5
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 5.0
    
    }
}
