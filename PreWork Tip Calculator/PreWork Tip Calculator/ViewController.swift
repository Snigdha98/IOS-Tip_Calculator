//
//  ViewController.swift
//  PreWork Tip Calculator
//
//  Created by Snigdha Reddy Palvai on 8/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTxt: UITextField!
    @IBOutlet weak var calculateTipBtn: UIButton!
    @IBOutlet weak var tipPercentTxt: UITextField!
    
    @IBOutlet weak var tipAmountLbl: UITextField!
    @IBOutlet weak var billTotalLbl: UITextField!
    
    @IBAction func calculateTip(_ sender: Any) {
        let billAmount:Double = Double(billAmountTxt.text!)!
        
        let tipAmount:Double = (Double(tipPercentTxt.text!)!/100) * billAmount
        tipAmountLbl.text = String(format: "$%.02f", tipAmount)
        billTotalLbl.text = String(format: "$%.02f", billAmount + tipAmount)
            
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

