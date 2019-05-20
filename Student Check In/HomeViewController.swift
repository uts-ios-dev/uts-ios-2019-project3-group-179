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
    
    var ref: DatabaseReference!
    @IBOutlet weak var notesTableView: UITableView!
    
    var notes: [Note] = []
    /* var notes: [Note] = [Note(id: "1", title: "Test", description: "This is a very long test that'll probably find it's way to span three lines or more than three lines in fact it might even span up to four lines but i doubt itThis is a very long test that'll probably find it's way to span three lines or more than three lines in fact it might even span up to four lines but i doubt itThis is a very long test that'll probably find it's way to span three lines or more than three lines in fact it might even span up to four lines but i doubt itThis is a very long test that'll probably find it's way to span three lines or more than three lines in fact it might even span up to four lines but i doubt it", timeCreated: "Test"), Note(id: "2", title: "Test", description: "This is a very long test that'll probably find it's way to span three lines or more than three lines in fact it might even span up to four lines but i doubt it", timeCreated: "Test"), Note(id: "3", title: "Test", description: "This is a very long test that'll probably find it's way to span three lines or more than three lines in fact it might even span up to four lines but i doubt it", timeCreated: "Test"), Note(id: "4", title: "Test", description: "One single line", timeCreated: "Test")] */
    
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
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        ref.child("notes").observe(.childAdded, with: { (snapshot) in
            let value = snapshot.value as! [String: AnyObject]
            let title = value["title"] as! String
            let description = value["description"] as! String
            let timeCreated = value["timeCreated"] as! String
            let id = value["id"] as! String
            self.notes.append(Note(id: id, title: title, description: description, timeCreated: timeCreated))
            self.notesTableView.reloadData()
        })

    }
    

}
