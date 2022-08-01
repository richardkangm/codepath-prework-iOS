//
//  ViewController.swift
//  Prework
//
//  Created by Richard Kang on 7/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var labelTipAmount: UILabel!
    @IBOutlet weak var controlTipPercent: UISegmentedControl!
    @IBOutlet weak var labelTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // Get bill amount from text field input
        let bill = Double(txtBillAmount.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[controlTipPercent.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        labelTipAmount.text = String(format: "$%.2f", tip)
        
        // Update total amount
        labelTotal.text = String(format: "$%.2f", total)
    }
    
    
    
}

