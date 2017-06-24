//
//  NIbLoadableView.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/23/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import UIKit


protocol NibLoadableView: class{}
extension  NibLoadableView where Self: UIView {
    static var nibName: String{
        return String(describing: self)
    }
}
