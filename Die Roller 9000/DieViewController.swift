//
//  DieViewController.swift
//  Die Roller 9000
//
//  Created by Josh on 1/9/15.
//  Copyright (c) 2015 Groovy Ape. All rights reserved.
//

import UIKit

class DieViewController: UIViewController {

    var numberOfSides: Int = 0
    
    @IBOutlet weak var lblDieCount: UILabel!
    @IBOutlet weak var lblSideCount: UILabel!
    @IBOutlet weak var stepperDieCount: UIStepper!
    
    override func viewDidLoad() {
        lblSideCount.text = "d\(numberOfSides)"
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func stepD20ValueChanged(sender: UIStepper) {
        lblDieCount.text = Int(sender.value).description
    }
    
    @IBAction func btnRoll(sender: UIButton) {
        var parentViewController = self.parentViewController as ViewController
        if (stepperDieCount.value > 0)
        {
            let totalDie = Int(stepperDieCount.value)
            var rollTotal = 0
            
            for index in 1...totalDie {
                rollTotal += Int(arc4random_uniform(UInt32(numberOfSides))) + 1
            }
            parentViewController.lblResult.text = "\(totalDie)d\(numberOfSides): \(rollTotal)"
        }
        else
        {
            parentViewController.lblResult.text = "Please specify the number of die"
        }
    }
}
