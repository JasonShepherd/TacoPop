//
//  TacoCell.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/22/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell,NibLoadableView,Shakeable {

    @IBOutlet weak var tacoImage:UIImageView!
    @IBOutlet weak var tacoLabel:UILabel!
    
    var taco:Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }

}
