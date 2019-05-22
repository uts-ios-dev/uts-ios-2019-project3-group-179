//
//  TestViewController.swift
//  Student Check In
//
//  Created by Don Loi on 19/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit
import MaterialComponents
import FirebaseDatabase

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var notesTableView: UITableView!

    var firebaseManager: FirebaseManager!
    var ref: DatabaseReference!
    var notes: [Note] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firebaseManager = FirebaseManager()
        firebaseManager.attachNotesObserverTo(controller: self)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "note", for: indexPath) as! NoteTableViewCell
        cell.noteTitleLabel.text = notes[indexPath.row].title
        cell.noteDescriptionLabel.text = notes[indexPath.row].description
        cell.noteTimeCreatedLabel.text = notes[indexPath.row].timeCreated
        return cell
    }
    
    
    //This method is used to handle the table view item taps
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        /* create a new viewNoteViewController and pass the note selected to that controller */
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewNoteViewController = storyboard.instantiateViewController(withIdentifier: "ViewNoteViewController") as! ViewNoteViewController
        viewNoteViewController.note = notes[indexPath.row]
        self.present(viewNoteViewController, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    
    
}
