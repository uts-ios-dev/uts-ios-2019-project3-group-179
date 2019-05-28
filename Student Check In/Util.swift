//
//  Util.swift
//  Student Check In
//
//  Created by Don Loi on 25/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation
import UIKit

class Util {
    
    static let long_date_format = "dd MMMM yyyy"
    static let short_date_format = "dd MMM"
    static let time_format = "hh:mm a"
    static let placeholderTextColor = UIColor(red: 0, green: 0, blue: 0.0980392, alpha: 0.22)
    
    static func areAnyTextFieldsEmpty(textFields: [UITextField]) -> Bool {
        for textField in textFields {
            if textField.text != nil && textField.text!.isEmpty {
               return true
            }
        }
        return false
    }
    
}