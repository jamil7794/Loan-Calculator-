//
//  customizedButton.swift
//  Loan-Calculator
//
//  Created by Jamil Jalal on 6/4/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class customizedButton: UIButton {

    override func prepareForInterfaceBuilder() {
        customize()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
    }
    
    func customize(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2544681079)
        layer.cornerRadius = 5.0
    }
}
