//
//  BillCalculator.swift
//  Tipsy
//
//  Created by Claudia Cavalini Maganhi on 30/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import Foundation

struct BillCalculator {
    
    var bill: Float
    var tip: Float
    var people: Double
    
    func calculatePerPersonValue() -> Float {
        let tipChosen = 100 + tip
        let tipPercentage = tipChosen / 100
        
        let totalBillValue = bill * tipPercentage
        let perPersonValue = totalBillValue / Float(people)
        return perPersonValue
    }
    
}
