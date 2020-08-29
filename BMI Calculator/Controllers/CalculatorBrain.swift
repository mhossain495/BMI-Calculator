//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohammed Hossain on 8/28/20.
//

import Foundation

struct CalculatorBrain {
   
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight/pow(height, 2)
    
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    
    
    
}
