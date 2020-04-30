//
//  SpinWheel.swift
//  FinalProject
//
//  *unused- to be implemented to further facilitate MVC design practices*
//
//  Created by Destin West on 4/11/20.
//  Copyright © 2020 Destin West. All rights reserved.
//

//import UIKit
//
//struct SpinWheel {
//    
//    var randomInt: Int
//    
//    var view: UIImageView
//    
//    mutating func spinWheel(_ imageView: UIImageView) {
//        
//        let view = imageView
//        
//        randomInt = Int.random(in: 9...20)
//
//        UIView.animate(withDuration: 5.0, delay: 0, options: .curveEaseOut, animations: {
//            for i in 1...self.randomInt {
//                self.view.transform = CGAffineTransform(rotationAngle: CGFloat(i))
//            }
//        })
//    }
//}
