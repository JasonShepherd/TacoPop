//
//  MutableCollection+Ext.swift
//  TacoPop
//
//  Created by Jason Shepherd on 6/24/17.
//  Copyright © 2017 Jason Shepherd. All rights reserved.
//
import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
