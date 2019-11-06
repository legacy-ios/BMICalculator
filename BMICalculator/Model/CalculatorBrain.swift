//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by jungwooram on 2019-10-14.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculate(height:Float, weight:Float){
        
        let result = weight / (height * height)

        if result < 18.5{
            bmi = BMI(value: result, advice: "Eat More Food", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if result < 24.9{
            bmi = BMI(value: result, advice: "Good for you", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: result, advice: "Stop eating", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
}
