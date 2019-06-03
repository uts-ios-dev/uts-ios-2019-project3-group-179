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
        let isCompleted = taskAsDictionary["isCompleted"] as! String
        if !id.isEmpty && !title.isEmpty && !dueDate.isEmpty && !dueTime.isEmpty && !description.isEmpty && !isCompleted.isEmpty {
            return Task(id: id, title: title, dueDate: dueDate, dueTime: dueTime, description: description, isCompleted: isCompleted)
        }
        return nil
    }
    
    func toFile() -> File? {
        let fileAsDictionary = self.value as! [String: AnyObject]
        let id = fileAsDictionary["id"] as! String
        let fileName = fileAsDictionary["fileName"] as! String
        let referenceToFile = fileAsDictionary["fileUrl"] as! String
        if !id.isEmpty && !fileName.isEmpty && !referenceToFile.isEmpty {
            return File(id: id, fileName: fileName, referenceToFile: referenceToFile)
        }
        return nil
    }
}

class FirebaseManager {

    var ref: DatabaseReference!
    var firebaseAuthManager: FirebaseAuthManager!
    
    init() {
        firebaseAuthManager = FirebaseAuthManager()
        ref = Database.database().reference().child(Keys.User.rawValue).child(firebaseAuthManager.getUserId()   )
    }
    
    /// Attaches observers to the respective notes child and notifies the database when changes occur on that child
    ///
    /// - Parameter controller: the controller to notify
    func attachNotesObserverTo(controller: HomeViewController)  {
        //Observer for notes being added to the database
        let notesReference = ref.child(Keys.Note.rawValue)
        notesReference.observe(.childAdded, with: { snapshot in
            if let note = snapshot.toNote() {
                controller.addNote(note: note)
            }
        })
        //Observer for notes being changed in the database
        notesReference.observe(.childChanged, with: { snapshot in
            if let note = snapshot.toNote() {
                controller.updateNote(note)
            }
        })
        
        notesReference.observe(.childRemoved, with: { snapshot in
            if let note = snapshot.toNote() {
                controller.reloadTableFromDelete(note: note, indexPath: nil)
            }
        })
        
        //Observer for any data changes and once there is a connection with firebase, stop the spinner
        notesReference.observe(.value, with: { snapshot in
            //Stop the progressbar on the home screen from animating once connection is established
            if (controller.progressBar != nil) {
                controller.progressBar.removeFromSuperview()
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
            }
        })
        
        taskReference.observe(.childChanged, with: { snapshot in
            if let task = snapshot.toTask() {
                controller.updateTask(task: task)
            }
        })
        
        taskReference.observe(.value, with: { snapshot in
            //Stop the progressbar on the task screen from animating once connection is established
            if (controller.progressBar != nil) {
                controller.progressBar.removeFromSuperview()
            }
        })
        
    }
    
    /// Attaches an observer pointing at the file node in firebase and notifies the respective controller
    ///
    /// - Parameter controller: the controller to notify
    func attachFilesObserverTo(controller: FileViewController) {
        let userReference = ref.child("users").child(Auth.auth().currentUser!.uid)
        let filesReference = ref.child(Keys.File.rawValue)
        filesReference.observe(.childAdded, with: { snapshot in
            if let file = snapshot.toFile() {
                controller.addFile(file: file)
            }
        })
        
        filesReference.observe(.childRemoved, with: { snapshot in
            if let file = snapshot.toFile() {
                controller.reloadTableFromDelete(file: file, indexPath: nil)
            }
        })
        
        filesReference.observe(.value, with: { snapshot in
            //Stop the progressbar on the task screen from animating once connection is established
            if (controller.progressBar != nil) {
                controller.progressBar.removeFromSuperview()
            }
        })
    }
    
}
