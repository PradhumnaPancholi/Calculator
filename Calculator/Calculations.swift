//
//  Calculations.swift
//  Calculator
//
//  Created by Pradhumna Pancholi on 2019-05-22.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import Foundation

class Calculations {
    var firstNum: Double?
    var secondNum: Double?
    var operation: String?
    
    func calculate() -> Double? {
        if (operation != nil){
            if (firstNum != nil){
                if (secondNum != nil){
                    switch operation {
                    case "+" :
                         return (firstNum! + secondNum!)
                    case "-" :
                        return (firstNum! - secondNum!)
                    case "*" :
                        return (firstNum! * secondNum!)
                    case "/" :
                        return (firstNum! / secondNum!)
                    default:
                        return nil
                    }
                }
            }else {
                return nil
            }
        }else {
            return nil
        }
     return 0
    }
}
