//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mohammed Hossain on 8/27/20.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        bmiLabel.text = bmiValue
    
    }
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }


}
