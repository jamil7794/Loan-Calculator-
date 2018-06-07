//
//  ViewController.swift
//  Loan-Calculator
//
//  Created by Jamil Jalal on 6/4/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit
//Core
class LoanCalculatorVC: UIViewController {
 
    
    @IBOutlet weak var loanAmount: customizedTextField!
    @IBOutlet weak var aprTextField: aprField!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loanAmount.keyboardType = UIKeyboardType.numberPad
        aprTextField.keyboardType = UIKeyboardType.numberPad
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0,y: 0, width: view.frame.size.width,height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(LoanCalculatorVC.calculate), for: .touchUpInside)
        
        loanAmount.inputAccessoryView = calcBtn
        aprTextField.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let loanAM = loanAmount.text, let a_p_r = aprTextField.text{
            if let loan = Double(loanAM), let apr = Double(a_p_r){
                view.endEditing(true)
                resultLbl.text = "Monthly Payment: $\(File.getAmount(amount: loan, apr: apr)) for 6 years"
                resultLbl.isHidden = false
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: customizedButton) {
        resultLbl.isHidden = true
        resultLbl.text=""
        loanAmount.text=""
        aprTextField.text=""
    }
    
}

