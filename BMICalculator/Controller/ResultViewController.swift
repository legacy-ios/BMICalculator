//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by jungwooram on 2019-10-14.
//  Copyright © 2019 jungwooram. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var value:String?
    var advice:String?
    var bgColor:UIColor? 
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = value
        adviceLabel.text = advice
        view.backgroundColor = bgColor
        
       
    }
    
    @IBAction func reCalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
