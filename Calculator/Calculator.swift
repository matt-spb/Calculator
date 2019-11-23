//
//  Functions.swift
//  Calculator
//
//  Created by macbook on 29/10/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation

class Calc {
    
    static func divide(num1: Double, num2: Double) -> String {
        if num2 == 0 {
            return "Error"
        } else {
            return String(num1 / num2)
        }
    }
    
    static func multiplication(num1: Double, num2: Double) -> String {
        return String(num1 * num2)
    }
    
    static func addition(num1: Double, num2: Double) -> String {
        return String(num1 + num2)
    }
    
    static func subtraction(num1: Double, num2: Double) -> String {
        return String(num1 - num2)
    }
}


