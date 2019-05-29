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
    
    /// Converts a snapshot to a task
    ///
    /// - Returns: a task object
    func toTask() -> Task? {
        let taskAsDictionary = self.value as! [String: AnyObject]
        let id = taskAsDictionary["id"] as! String
        let title = taskAsDictionary["title"] as! String
        let dueDate = taskAsDictionary["dueDate"] as! String
        let dueTime = taskAsDictionary["dueTime"] as! String
        let description = taskAsDictionary["description"] as! String
        if !id.isEmpty && !title.isEmpty && !dueDate.isEmpty && !dueTime.isEmpty && !description.isEmpty {
            return Task(id: id, title: title, dueDate: dueDate, dueTime: dueTime, description: description)
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

            if let note = snapshot.toNote() {
                controller.addNote(note: note)
                controller.notesTableView.reloadData()
            }
        })
        //Observer for notes being changed in the database
        notesReference.observe(.childChanged, with: { snapshot in
            if let note = snapshot.toNote() {
                controller.updateNote(note)
            }
        })
        
    }
    
    /// Attaches an observer to the task child in firebase and notifies the controller passed in when changes are made to the task child
    ///
    /// - Parameter controller: the controller to notify
    func attachTasksObserverTo(controller: TaskViewController) {
        let taskReference = ref.child(Keys.Task.rawValue)
        taskReference.observe(.childAdded, with: { snapshot in
            if let task = snapshot.toTask() {
                controller.addTask(task: task)
                controller.taskTableView.reloadData()
            }
        })
        
        taskReference.observe(.childChanged, with: { snapshot in
            if let task = snapshot.toTask() {
                controller.updateTask(task: task)
            }
        })
        
        
    }
    
}
