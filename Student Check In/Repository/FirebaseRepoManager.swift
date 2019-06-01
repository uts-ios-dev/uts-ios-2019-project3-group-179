//
//  FirebaseRepoManager.swift
//  Student Check In
//
//  Created by Don Loi on 22/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation
import Firebase

class FirebaseRepoManager {
    
    var ref: DatabaseReference!
    
    init() {
        ref = Database.database().reference()
    }
    
    /// Adds a note to the Firebase database
    ///
    /// - Parameter note: the note to add to the database
    func addNote(note: inout Note) {
        note.id = generateId(location: Keys.Note.rawValue)
        addValue(location: Keys.Note.rawValue, value: note.toDictionary())
    }
    
    /// Updates the specified note in the database
    ///
    /// - Parameter note: the note to update
    func updateNote(note: Note) {
        let updateNoteRef = ref.child(Keys.Note.rawValue).child(note.id!)
        updateNoteRef.setValue(note.toDictionary())
    }
    
    /// Adds a a task to the Firebase database
    ///
    /// - Parameter task: the task to add to the database
    func addTask(task: inout Task) {
        task.id = generateId(location: Keys.Task.rawValue)
        addValue(location: Keys.Task.rawValue, value: task.toDictionary())
    }
    
    /// Updates a specified task
    ///
    /// - Parameter task: the task to update
    func updateTask(task: inout Task) {
        let updateTaskRef = ref.child(Keys.Task.rawValue).child(task.id!)
        updateTaskRef.setValue(task.toDictionary())
    }
    
    func addFile(file: inout File) {
        file.id = generateId(location: Keys.File.rawValue)
        addValue(location: Keys.File.rawValue, value: file.toDictionary())
    }
    
    /// Pushes a value to the database
    ///
    /// - Parameters:
    ///   - location: the location to push the value
    ///   - value: the value to push
    func addValue(location: String, value: NSDictionary) {
        let valueRef = ref.child(location)
        valueRef.child(value["id"] as! String).setValue(value)
    }
    
    /// Generates a unique id for a specified location
    ///
    /// - Parameter location: the location to generate the id from
    /// - Returns: the unique id
    func generateId(location: String) -> String {
        return ref.child(location).childByAutoId().key!
    }
    
    
    
}
