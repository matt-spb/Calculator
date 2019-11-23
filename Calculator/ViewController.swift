//
//  ViewController.swift
//  Calculator
//
//  Created by macbook on 26/10/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operationID = 0
    var isEqualPressed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func action(_ sender: UIButton) {
        switch sender.tag {
        case 11:
            label.text = "0"
            numberOnScreen = 0
            previousNumber = 0
            performingMath = false
        case 12, 13, 14, 15:
            performingMath = true
            previousNumber = Double(label.text!)!
            operationID = sender.tag
        case 16:
            performingMath = false
            numberOnScreen = Double(label.text!)!
            switch operationID {
            case 12: label.text = Calc.divide(num1: previousNumber, num2: numberOnScreen)
            case 13: label.text = Calc.multiplication(num1: previousNumber, num2: numberOnScreen)
            case 14: label.text = Calc.subtraction(num1: previousNumber, num2: numberOnScreen)
            case 15: label.text = Calc.addition(num1: previousNumber, num2: numberOnScreen)
            default:
                break
            }
            isEqualPressed = true
        default:
            break
        }
    }
    
    
    @IBAction func digit(_ sender: UIButton) {
        if performingMath == true || isEqualPressed == true {
            label.text = String(sender.tag - 1)
            performingMath = false
        } else {
            switch label.text {
            case "", "0":
                label.text = String(sender.tag - 1)
            default:
                label.text = label.text! + String(sender.tag - 1)
            }
        }
        numberOnScreen = Double(label.text!)!
    }
}


