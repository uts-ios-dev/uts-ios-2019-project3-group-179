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
    @IBOutlet weak var progressBar: MDCActivityIndicator!
    
    var firebaseManager: FirebaseManager!
    var ref: DatabaseReference!
    //Stores the data to display on the tableview
    var notes: [Note] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firebaseManager = FirebaseManager()
        firebaseManager.attachNotesObserverTo(controller: self)
        //Setup the indeterminate progressbar
        progressBar.sizeToFit()
        progressBar.startAnimating()
        progressBar.indicatorMode = .indeterminate
        //Make the progressbar only display one colour
        progressBar.cycleColors = [UIColor.red]
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
    
    /// Reflects the changes of a note in the tableview
    ///
    /// - Parameter updateNote: the note that was changed
    func updateNote(_ updateNote: Note) {
        //Track the index so we know which row to update in the table view
        for index in 0...notes.count - 1 {
            if notes[index].id! == updateNote.id! {
                notes[index] = updateNote
            }
            notesTableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .fade)
        }
    }
    
    
    
    
}
