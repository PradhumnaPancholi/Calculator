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
        inputLabel.text = sender.currentTitle
    }
}

