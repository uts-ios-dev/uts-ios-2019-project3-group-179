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
        let noteRef = ref.child(Keys.Note.rawValue)
        //create a new location to store the note
        let newNoteKey = noteRef.childByAutoId().key
        /* */
        if let key = newNoteKey {
            note.id = key
            noteRef.child(key).setValue(note.toDictionary())
        }
    }
    
    /// Updates the specified note in the database
    ///
    /// - Parameter note: the note to update
    func updateNote(note: Note) {
        let updateNoteRef = ref.child(Keys.Note.rawValue).child(note.id!)
        updateNoteRef.setValue(note.toDictionary())
    }
    
    
    
}
