//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by rs on 27/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var advice: UILabel!
    var bmi: String?
    var adv: String?
    var col: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = bmi
        advice.text = adv
        view.backgroundColor = col
    }
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
