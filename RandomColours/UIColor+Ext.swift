//
//  UIColor+Ext.swift
//  RandomColours
//
//  Created by Admin on 03/01/2024.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor{  // static means each instant can use it not only a specific one.
        //Creating Random Color
        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        return randomColor
    }
    
}
