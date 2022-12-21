//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Anurag Bhatt on 25/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var BmiValue : String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = BmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
       
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true , completion: nil)
       
    }
}
