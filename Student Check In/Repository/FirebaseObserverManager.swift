//
//  FirebaseManager.swift
//  Student Check In
//
//  Created by Don Loi on 21/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation
import Firebase

extension DataSnapshot {
    
    /// Converts a datasnapshot into a note
    ///
    /// - Returns: the snapshot data as a note
    func toNote() -> Note? {
        let noteAsDictionary = self.value as! [String: AnyObject]
        let id = noteAsDictionary["id"] as! String
        let title = noteAsDictionary["title"] as! String
        let description = noteAsDictionary["description"] as! String
        let timeCreated = noteAsDictionary["timeCreated"] as! String
        if !id.isEmpty && !title.isEmpty && !description.isEmpty && !timeCreated.isEmpty {
            return Note(id: id, title: title, description: description, timeCreated: timeCreated)
        }
        return nil
    }
    
}

class FirebaseManager {

    var ref: DatabaseReference!
    
    init() {
        ref = Database.database().reference()
    }
    
    /// Attaches an observer to the notes child in firebase to notify the application of any changes such as notes added, removed or updated
    ///
    /// - Parameter controller: the controller to notify of a change
    func attachNotesObserverTo(controller: HomeViewController) {
        //Observer for notes being added to the database
        let notesReference = ref.child(Keys.Note.rawValue)
        notesReference.observe(.childAdded, with: { snapshot in
            //Stop the progressbar on the home screen from animating one a value is retrieved
            if (controller.progressBar != nil) {
                controller.progressBar.removeFromSuperview()
            }
            /* let value = snapshot.value as! [String: AnyObject]
            let title = value["title"] as! String
            let description = value["description"] as! String
            let timeCreated = value["timeCreated"] as! String
            let id = value["id"] as! String */
            if let note = snapshot.toNote() {
                controller.notes.append(note)
            }
            //controller.notes.append(Note(id: id, title: title, description: description, timeCreated: timeCreated))
            controller.notesTableView.reloadData()
        })
        //Observer for notes being changed in the database
        notesReference.observe(.childChanged, with: { snapshot in
            if let note = snapshot.toNote() {
                controller.updateNote(note)
            }
        })
        
    }
    
    
    func attachTasksListenerTo() {
        
    }
    
}
