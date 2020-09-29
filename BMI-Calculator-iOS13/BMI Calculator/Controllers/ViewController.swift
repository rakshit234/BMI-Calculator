//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        height.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weight.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let h = heightSlider.value
        let w = weightSlider.value
        let bmi = w / pow(h,2)
        print(bmi)
    }
}

