//
//  BMI.swift
//  BMI Calculator
//
//  Created by rs on 27/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    
    let value: Float
    let advice: String
    let color: UIColor
    
    init(val: Float, adv: String, col: UIColor) {
        value = val
        advice = adv
        color = col
    }

}
