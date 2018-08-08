//
//  WeightViewController.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 5..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {
    
    @IBOutlet weak var heightTextfield: UITextField!
    @IBOutlet weak var weightTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var userHeight = heightTextfield.text
        var userWeight = weightTextfield.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    


}
