//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var brain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = ("\(String(format: "%.2f", sender.value))m")
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = ("\(String(Int(sender.value)))kg")
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        let h = heightSlider.value
        let w = weightSlider.value
        
        brain.calculateBmi(weight: w, height: h)
       
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BmiValue = brain.getBmiValue()
            destinationVC.advice = brain.getAdvice()
            destinationVC.color = brain.getColor()
        }
    }
    
}

