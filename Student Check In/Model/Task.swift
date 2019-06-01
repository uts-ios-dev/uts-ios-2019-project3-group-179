//  This struct is a wrapped struct which encapsulates the task internal details
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
    var isCompleted: String
    
    /// Creates an initial task without the id (should be used for initial task creation)
    ///
    /// - Parameters:
    ///   - title: the title of task
    ///   - dueDate: the due date of the task
    ///   - dueTime: the due time of the task
    ///   - description: the description of the task
    init(title: String, dueDate: String, dueTime: String, description: String) {
        self.title = title
        self.dueDate = dueDate
        self.dueTime = dueTime
        self.description = description
        self.isCompleted = "No"
    }
    
    init(id: String, title: String, dueDate: String, dueTime: String, description: String) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.dueTime = dueTime
        self.description = description
        self.isCompleted = "No"
    }
    
    mutating func toDictionary() -> NSDictionary {
        let dictonary: [String: String] = ["id": self.id!,
                                           "title": self.title,
                                           "dueDate": self.dueDate,
                                           "dueTime": self.dueTime,
                                           "description": self.description,
                                            "isCompleted": self.isCompleted]
        return dictonary as NSDictionary
    }
    
    
}
