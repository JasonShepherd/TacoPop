//
//  UICollectionView+Ext.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/23/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifer)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifer, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifer)")
        }
        
        return cell
    }
}

extension UICollectionViewCell: ReusableView {}


