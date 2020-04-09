//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Barry on 4/9/20.
//  Copyright © 2020 Barry. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?;
    var advice : String?;
    var color : UIColor?;
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue;
        adviseLabel.text = advice;
        view.backgroundColor = color;
    }
    

    @IBAction func recalculatedPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
