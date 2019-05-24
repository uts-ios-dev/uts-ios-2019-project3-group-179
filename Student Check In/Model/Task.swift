//
//  Task.swift
//  Student Check In
//
//  Created by Don Loi on 23/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation

struct Task {
    
    var id: String?
    var title: String
    var dueDate: String
    var dueTime: String
    var description: String
    
    init(title: String, dueDate: String, dueTime: String, description: String) {
        self.title = title
        self.dueDate = dueDate
        self.dueTime = dueTime
        self.description = description
    }
    
    init(id: String, title: String, dueDate: String, dueTime: String, description: String) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.dueTime = dueTime
        self.description = description
    }
    
    mutating func toDictionary() -> NSDictionary {
        let dictonary: [String: String] = ["id": self.id!,
                                           "title": self.title,
                                           "dueDate": self.dueDate,
                                           "dueTime": self.dueTime,
                                           "description": self.description]
        return dictonary as NSDictionary
    }
    
    
}
