//
//  ViewController.swift
//  BMI Calculator
//


import UIKit

class CalculateViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = String(height) + "m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = String(weight) + "Kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight/pow(height,2)
        bmiValue = String(format:"%.1f", bmi)
        
        // Segue to ResultViewController
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController // set ResultViewController as destination
            destinationVC.bmiValue = bmiValue // pass bmiValue from CalculateViewController to destination view controller
            
        }
        
        
        
    }
}









