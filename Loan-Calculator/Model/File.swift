//
//  File.swift
//  Loan-Calculator
//
//  Created by Jamil Jalal on 6/5/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import Foundation
class File{
    class func getAmount(amount am: Double, apr a_p_r: Double) -> Double{
        let apr = a_p_r/365
        let original_amount = am
        let amount = (am/6)/365
        let each_day_payment = amount + (original_amount*(apr/100))
        let monthly_payment = (each_day_payment*365)/12
        let y = Double(round(100*monthly_payment)/100)
        return Double(y)
    }
}
