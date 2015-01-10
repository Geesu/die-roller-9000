//
//  ViewController.swift
//  Die Roller 9000
//
//  Created by Josh on 1/9/15.
//  Copyright (c) 2015 Groovy Ape. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if ( segue.identifier != "" ){
            if let value = segue.identifier?.toInt() {
                var dieViewController = segue.destinationViewController as DieViewController
                dieViewController.numberOfSides = value
            }
        }
    }
}
