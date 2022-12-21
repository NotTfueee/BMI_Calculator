//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anurag Bhatt on 26/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit



struct CalculatorBrain
{
    
    var bmi : BMI?
    var formula : Float = 0.0
    
    func getBmiValue() -> String
    {
        let bmi1decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmi1decimal
    }
    
    mutating func calculateBmi(weight : Float , height : Float)
    {
     
         formula = weight/(height*height)
        
        if ( formula < 18.5)
        {
            let colorUnderweight = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            bmi =  BMI(value: formula, advice: "Eat More Pies!", color: colorUnderweight)
        }
        else if (formula <= 24.9)
        {
            let colorNormal = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            bmi = BMI(value: formula, advice: "Fit As A Fiddle!", color: colorNormal)
        }
        else
        {
            let colorObese = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            bmi = BMI(value: formula, advice: "Eat Less Bhature", color: colorObese)
            
        }
        
        
    }
    
    
    func getAdvice() -> String
    {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? .white
    }
    
    
    
    
}
