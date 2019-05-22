//
//  FirebaseManager.swift
//  Student Check In
//
//  Created by Don Loi on 21/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import Foundation
import Firebase

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
            let value = snapshot.value as! [String: AnyObject]
            let title = value["title"] as! String
            let description = value["description"] as! String
            let timeCreated = value["timeCreated"] as! String
            controller.notes.append(Note(title: title, description: description, timeCreated: timeCreated))
            controller.notesTableView.reloadData()
        })
        //Observer for notes being changed in the database
        notesReference.observe(.childChanged, with: { snapshot in
            
        })
        
    }
    
    
    func attachTasksListenerTo() {
        
    }
    
}
