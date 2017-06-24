//
//  DataService.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/18/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//

import Foundation


protocol DataServiceDelegate: class {
    func loadDeliciousTacoData()
}
    
class DataService{
    
    weak var delegate: DataServiceDelegate?
    static let instance = DataService()
    
    
    
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        // Chicken Tacos
        tacoArray.append(Taco(id: 1, productName: "Loaded Flour Chicken Taco", shellId: 1, proteinId: "Chicken", condimentId: 1))
        tacoArray.append(Taco(id: 2, productName: "Loaded Corn Chicken Taco", shellId: 2, proteinId: "Chicken", condimentId: 1))
        tacoArray.append(Taco(id: 3, productName: "Plain Flour Chicken Taco", shellId: 1, proteinId: "Chicken", condimentId: 2))
        tacoArray.append(Taco(id: 4, productName: "Plain Corn Chicken Taco", shellId: 2, proteinId: "Chicken", condimentId: 2))
        
        // Beef Tacos
        tacoArray.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shellId: 1, proteinId: "Beef", condimentId: 1))
        tacoArray.append(Taco(id: 6, productName: "Loaded Corn Beef Taco", shellId: 2, proteinId: "Beef", condimentId: 1))
        tacoArray.append(Taco(id: 7, productName: "Plain Flour Beef Taco", shellId: 1, proteinId: "Beef", condimentId: 2))
        tacoArray.append(Taco(id: 8, productName: "Plain Corn Beef Taco", shellId: 2, proteinId: "Beef", condimentId: 2))
        
        // Brisket Tacos
        tacoArray.append(Taco(id: 9, productName: "Loaded Flour Brisket Taco", shellId: 1, proteinId: "Brisket", condimentId: 1))
        tacoArray.append(Taco(id: 10, productName: "Loaded Corn Brisket Taco", shellId: 2, proteinId: "Brisket", condimentId: 1))
        tacoArray.append(Taco(id: 11, productName: "Plain Flour Brisket Taco", shellId: 1, proteinId: "Brisket", condimentId: 2))
        tacoArray.append(Taco(id: 12, productName: "Plain Corn Brisket Taco", shellId: 2, proteinId: "Brisket", condimentId: 2))
        
        // Fish Tacos
        tacoArray.append(Taco(id: 13, productName: "Loaded Flour Fish Taco", shellId: 1, proteinId: "Fish", condimentId: 1))
        tacoArray.append(Taco(id: 14, productName: "Loaded Corn Fish Taco", shellId: 2, proteinId: "Fish", condimentId: 1))
        tacoArray.append(Taco(id: 15, productName: "Plain Flour Fish Taco", shellId: 1, proteinId: "Fish", condimentId: 2))
        tacoArray.append(Taco(id: 16, productName: "Plain Corn Fish Taco", shellId: 2, proteinId: "Fish", condimentId: 2))
        
        delegate?.loadDeliciousTacoData()
        
    }
    
    
    
    
    
    
}
