//
//  ViewController.swift
//  BMICalculator
//
//  Created by jungwooram on 2019-10-14.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit

class BMICalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value

        let weight = weightSlider.value

        calculatorBrain.calculate(height:height, weight:weight)
        
        performSegue(withIdentifier: "GoToTheResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToTheResult"{
            let destinationViewController = segue.destination as! ResultViewController
            destinationViewController.value = calculatorBrain.getBMIValue()
            destinationViewController.advice = calculatorBrain.getAdvice()
            destinationViewController.bgColor = calculatorBrain.getColor()
        }
    }
    
    
    
}

