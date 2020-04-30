//
//  ViewController.swift
//  Tipsy
//
//  Created by Claudia Cavalini Maganhi on 30/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {
    @IBOutlet weak var billValueTextField: UITextField!
    @IBOutlet weak var zeroPerCentButton: UIButton!
    @IBOutlet weak var tenPerCentButton: UIButton!
    @IBOutlet weak var fifteenPerCentButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func percentageTipTapped(_ sender: UIButton) {
    }
    @IBAction func peopleStepperChanged(_ sender: UIStepper) {
    }
    @IBAction func calculate(_ sender: UIButton) {
    }
    
}

