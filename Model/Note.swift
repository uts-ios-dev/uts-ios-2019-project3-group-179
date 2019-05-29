//  This is a note struct which encapsluates the note details
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
    
    init(id: String, title: String, description: String, timeCreated: String) {
        self.id = id
        self.title = title
        self.description = description
        self.timeCreated = timeCreated
    }
    
    
    /// This constructor should be called to create an initial note id can be set later
    ///
    /// - Parameters:
    ///   - title: title of the note
    ///   - description: description of the note
    ///   - timeCreated: time created of the note
    init(title: String, description: String, timeCreated: String) {
        self.title = title
        self.description = description
        self.timeCreated = timeCreated
    }
    
    func toDictionary() -> NSDictionary {
        let noteAsDictionary = ["id": self.id!,
                                "title": self.title,
                                "description": self.description,
                                "timeCreated": self.timeCreated]
        return noteAsDictionary as NSDictionary
    }
}
