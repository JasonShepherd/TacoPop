//
//  Taco.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/18/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import Foundation


enum TacoShell: Int{
    case Flour = 1
    case Corn = 2
}

enum Protein: String{
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Fish = "Fish"
    case Brisket = "Brisket"
}

enum Condiment: Int {
    
    case Loaded = 1
    case Plain = 2
}


struct Taco {
    private var _id :Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: Protein!
    private var _condimentId: Condiment!
    
    
    var id: Int{
        return _id
    }
    
    var productName: String{
        return _productName
    }
    
    var shellId: TacoShell{
        return _shellId
    }
    
    
    var proteinId: Protein{
        return _proteinId
    }
    
   var  condimentId: Condiment{
    return _condimentId
    }
    
    init(id:Int, productName:String,shellId:Int,proteinId:String, condimentId:Int) {
        _id = id
        _productName = productName
        
        
        switch shellId {
        case 2:
            self._shellId = TacoShell.Corn
        default:
            self._shellId = TacoShell.Flour
            
        }
        
        switch proteinId{
        case "Chicken":
            self._proteinId = Protein.Chicken
        case "Brisket":
            self._proteinId = Protein.Brisket
        case "Fish":
            self._proteinId = Protein.Fish
        default:
            self._proteinId = Protein.Beef
            
        }
        
        switch condimentId{
        case 2:
            self._condimentId = Condiment.Loaded
        default:
            self._condimentId = Condiment.Plain
        }
        
    }
    
}













