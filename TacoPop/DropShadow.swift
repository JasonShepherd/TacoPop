//
//  DropShadow.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/18/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import UIKit



protocol DropShadow {}

extension DropShadow where Self :UIView {
    
    func addDropShadow(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    
}
