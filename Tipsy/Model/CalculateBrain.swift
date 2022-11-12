//
//  CalculateBrain.swift
//  Tipsy
//
//  Created by Nihad-Mac on 12/11/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalculateBrain {
    var tipPercentage = 0.0
    var slipNumber = 2
    var billAmount = 0.00
    var totalAmt = 0.00
    var slipAmount = 0.00
    
    mutating func calculateTotalAmount () -> String {
        totalAmt = billAmount + ((tipPercentage*billAmount))
        
        return (String(format: "%.2f", totalAmt))
    }
    
    mutating func getIndivitualAmt () -> String {
        slipAmount = totalAmt / Double(slipNumber)
        
        return (String(format: "%.2f", slipAmount))
        
    }
    
}
