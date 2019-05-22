//
//  Note.swift
//  Student Check In
//
//  Created by Don Loi on 19/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation

struct Note {
    
    var id: String?
    var title: String
    var description: String
    var timeCreated: String
    
    init(title: String, description: String, timeCreated: String) {
        self.title = title
        self.description = description
        self.timeCreated = timeCreated
    }
}
