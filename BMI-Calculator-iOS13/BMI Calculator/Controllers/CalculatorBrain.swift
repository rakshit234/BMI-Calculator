//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by rs on 27/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calcBMI(w: Float, h: Float) {
        let val = w / pow(h,2)
        switch val {
        case ..<18.5:
            bmi = BMI(val: val, adv: "Eat more pies!", col: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(val: val, adv: "Fit as fiddle!", col: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default:
            bmi = BMI(val: val, adv: "Eat less pies!", col: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }

    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
