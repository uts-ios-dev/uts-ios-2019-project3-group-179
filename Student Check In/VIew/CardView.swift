//
//  CardView.swift
//  Student Check In
//
//  Created by Don Loi on 22/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

class CardView: UIView {

    override func layoutSubviews() {
        layer.cornerRadius = 8.0
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 8.0)
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 5, height: 3.0);
        layer.shadowOpacity = 0.3
        layer.shadowPath = shadowPath.cgPath 
    }
}
