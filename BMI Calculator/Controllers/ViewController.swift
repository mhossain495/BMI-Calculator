//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var height = Float(0)
    var weight = Int(0)
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        height = Float(String(format: "%.2f", sender.value))!
        heightLabel.text = String(height) + "m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weight = Int(String(format: "%.0f", sender.value))!
        weightLabel.text = String(weight) + "Kg"
    }
    
    
    
    
    
}

