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
    
    @IBOutlet var percentageButtonCollection: [UIButton]!
    
    var tip: Float = 0.0
    var billCalculator: BillCalculator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyStyle()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         billValueTextField.endEditing(true)
    }
    
    private func applyStyle() {
        calculateButton.clipsToBounds = true
        calculateButton.layer.cornerRadius = 8.0
    }

    @IBAction func percentageTipTapped(_ sender: UIButton) {
        billValueTextField.endEditing(true)
        percentageButtonCollection.forEach { $0.isSelected = false }
        
        switch sender {
        case zeroPerCentButton:
            sender.isSelected = !sender.isSelected
            tip = 0
        case tenPerCentButton:
            sender.isSelected = !sender.isSelected
            tip = 10
        case fifteenPerCentButton:
            sender.isSelected = !sender.isSelected
            tip = 15
        default:
            break
        }
    }
    
    @IBAction func peopleStepperChanged(_ sender: UIStepper) {
        splitLabel.text = String(format:"%.0f", sender.value)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        guard let stringBill = billValueTextField.text else { return }
        guard let bill = Float(stringBill) else { return }
        
        guard let stringPeople = splitLabel.text else { return }
        guard let people = Double(stringPeople) else { return }
        
        let billCalculator = BillCalculator(bill: bill, tip: tip, people: people)
        
        guard let resultViewController = storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController else { return }
        
        resultViewController.billCalculator = billCalculator
        resultViewController.perPerson = billCalculator.calculatePerPersonValue()
        present(resultViewController, animated: true, completion: nil)
    }
 
    
}

