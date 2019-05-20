//
//  File.swift
//  Student Check In
//
//  Created by Don Loi on 20/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation
import FirebaseDatabase

class FirebaseManager {
    
    var ref: DatabaseReference
    
    init() {
        ref = Database.database().reference()
        
        
    }
    
    func attachNoteObserver(notes: [Note]) {
        let noteRef = ref.child("notes")
        noteRef.observe(.childAdded, with: { snapshot in
            let note = snapshot.value as? Note
            notes.append(note)
        })
    }
    
    
}
