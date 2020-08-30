//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohammed Hossain on 8/28/20.
//

import UIKit

struct CalculatorBrain {
    
    // bmi variable data type is BMI structure
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight/pow(height, 2)
        
        // switch case to pass value, advice, and color properties to bmi variable
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "You need to eat more food!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "You're fit and healthy!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "You need to eat less junk food!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        default:
            print("Error")
        }
    }
    
    // convert bmi value to 1 decimal point
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    // color property from bmi variable
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    // advice property from bmi variable
    func getAdvice() -> String {
        return bmi?.advice ?? ""
        
    }    
    
}


