//
//  User.swift
//  Student Check In
//
//  Created by Jacky Wang on 2/6/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation

struct User {
    
    var userId: String?
    var email: String
    var name: String
    
    init(userId: String, email: String, name: String) {
        self.userId = userId
        self.email = email
        self.name = name
    }

}
