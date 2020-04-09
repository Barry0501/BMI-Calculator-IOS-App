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
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue;
    }
    

    @IBAction func recalculatedPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
