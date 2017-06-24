//
//  ReusableView.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/23/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import UIKit

protocol ReusableView: class {}
extension ReusableView where Self: UIView{
    static var reuseIdentifer: String{
        return String(describing: self)
    }
}
