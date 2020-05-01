//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Claudia Cavalini Maganhi on 30/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var valuePerPersonLabel: UILabel!
    @IBOutlet weak var splitDescriptionLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    var perPerson: Float?
    var billCalculator: BillCalculator?

    override func viewDidLoad() {
        super.viewDidLoad()
        applyStyle()
        updateUI()
    }
    
    private func applyStyle() {
        recalculateButton.clipsToBounds = true
        recalculateButton.layer.cornerRadius = 8.0
    }
    
    private func updateUI() {
        guard let valuePerPerson = perPerson else { return }
        valuePerPersonLabel.text = String(format: "%.2f", valuePerPerson)
        
        guard let people = billCalculator?.people else { return }
        
        guard let tip = billCalculator?.tip else { return }
        
        splitDescriptionLabel.text = "Split between \(String(format: "%.0f", people)) people, \(String(format: "%.0f", tip))% tip."
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    

}
