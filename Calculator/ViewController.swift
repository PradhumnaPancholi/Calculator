//
//  ViewController.swift
//  Calculator
//
//  Created by Pradhumna Pancholi on 2019-05-15.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calc = Calculations()
    
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet var inputBtns: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPressed(_ sender: UIButton) {
        var currentVal = inputLabel.text!
        var operation: String? = ""
        //to accept input//
        switch (sender.currentTitle!) {
        //for numbers//
        case "0", "1","2","3","4","5","6","7","8","9":
            if(currentVal == "0" ) {
                inputLabel.text = "0"
            }else {
                currentVal = currentVal + sender.currentTitle!
            }
        //for clear all/
        case "C":
            currentVal = "0"
        //for Del -clears last character//
        case "Del":
            currentVal.remove(at: currentVal.index(before: currentVal.endIndex))
        //for decimal//
        case ".":
            if(!currentVal.contains(".")){
                currentVal = currentVal + "."
            }
        //to perfrom calculations//
        case "=":
            print("equal pressed")
            var nums = currentVal.components(separatedBy: NSCharacterSet(charactersIn: "+-*/") as CharacterSet);
            print(nums)
            
            //trying something//
            calc.firstNum = Double(nums[0])
            calc.secondNum = Double(nums[1])
            calc.operation = operation
            
            calc.calculate()
        //for operators//
        case "+","-","*","/":
            operation = sender.currentTitle
            currentVal = "\(currentVal)\(sender.currentTitle!)"
            
        default:
            break
        }
        //to display values in input//
        inputLabel.text = currentVal
        print(currentVal)
    }
    //function to clear last character on "del" being pressed//
    func delPressed(str: String){
        var newValue = str
        newValue.remove(at: newValue.index(before: newValue.endIndex))
        print(newValue)
    }
}

