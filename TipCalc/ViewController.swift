//
//  ViewController.swift
//  TipCalc
//
//  Created by Ryan McKenzie on 12/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tip_label: UILabel!
    @IBOutlet weak var tot_label: UILabel!
    @IBOutlet weak var billEntry: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billEntry.text!) ?? 0
        
        let percentages = [0.15, 0.20, 0.25]
        
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tip_label.text = String(format: "$%.2f", tip)
        
        tot_label.text = String(format: "$%.2f", total)
    }
}

