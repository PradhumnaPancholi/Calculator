//
//  ViewController.swift
//  Calculator
//
//  Created by Pradhumna Pancholi on 2019-05-15.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet var inputBtns: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPressed(_ sender: UIButton) {
        var currentVal = inputLabel.text!
        
        //to accept input//
        switch (sender.currentTitle!) {
        //for numbers//
        case "0", "1","2","3","4","5","6","7","8","9":
            if(currentVal == "0" ) {
                inputLabel.text = "0"
            }else {
                currentVal = currentVal + sender.currentTitle!
            }
        //for Del -clears last character//
        case "Del":
            currentVal.remove(at: currentVal.index(before: currentVal.endIndex))
        case ".":
            if(!currentVal.contains(".")){
                currentVal = currentVal + "."
            }
        default:
            break
        }
        //to display values in input//
        inputLabel.text = currentVal
    }
    //function to clear last character on "del" being pressed//
    func delPressed(str: String){
        var newValue = str
        newValue.remove(at: newValue.index(before: newValue.endIndex))
        print(newValue)
    }
}

