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
    func addNote(note: Note) {
        let noteRef = ref.child(Keys.Note.rawValue)
        //create a new location to store the note
        let newNoteKey = noteRef.childByAutoId().key
        /* */
        if let key = newNoteKey {
            let noteAsDictionary = ["id": key,
                                    "title": note.title,
                                    "description": note.description,
                                    "timeCreated": note.timeCreated]
            noteRef.child(key).setValue(noteAsDictionary)
        }
        
    }
    
    
}
