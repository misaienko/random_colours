//
//  ColoursDetailVC.swift
//  RandomColours
//
//  Created by Admin on 02/01/2024.
//

import UIKit

class ColoursDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        // An optional needs to have a default value
        view.backgroundColor = color ?? .blue  // ?? Means unwrapping - ckecking for nil to give default color
        // if the value has color - pass it, if not show default set to blue
    }
    
}
