//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Barry on 4/8/20.
//  Copyright © 2020 Barry. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain();
    
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
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let height = heightSlider.value;
        let weight = weightSlider.value;
        
        calculatorBrain.calculateBMI(height,weight);
        
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "gotoResult"){
            let destinationVC = segue.destination as! ResultViewController;
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue();
            destinationVC.advice = calculatorBrain.getAdvice();
            destinationVC.color = calculatorBrain.getColor();
        }
    }
}

