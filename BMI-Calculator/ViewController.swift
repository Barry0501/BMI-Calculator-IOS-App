//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Barry on 4/8/20.
//  Copyright © 2020 Barry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onDragSliderHeight(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f",sender.value) + "m";
    }
    
    
    @IBAction func onDragSliderWeight(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f",sender.value) + "kg";
    }
    
}

