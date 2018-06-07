//
//  aprField.swift
//  Loan-Calculator
//
//  Created by Jamil Jalal on 6/4/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class aprField: UITextField {
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size / 2, width: 20, height: 20))
        currencyLbl.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        cusomizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        cusomizeView()
    }
    
    func cusomizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2474047517)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,attributes:[.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
