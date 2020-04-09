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
    
    var bmiValue = "";
    
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
        
        let bmi = weight / pow(height, 2);
        
        
        bmiValue = String(format: "%.1f", bmi);
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "gotoResult"){
            let destinationVC = segue.destination as! ResultViewController;
            
            destinationVC.bmiValue = bmiValue;
        }
    }
}

