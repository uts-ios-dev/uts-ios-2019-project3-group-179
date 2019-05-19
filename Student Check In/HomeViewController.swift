//
//  TestViewController.swift
//  Student Check In
//
//  Created by Don Loi on 19/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit
import MaterialComponents

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let notes: [Note] = [Note(id: "1", title: "Test", description: "Test", timeCreated: "Test"), Note(id: "2", title: "Test", description: "Test", timeCreated: "Test"), Note(id: "3", title: "Test", description: "Test", timeCreated: "Test"), Note(id: "4", title: "Test", description: "Test", timeCreated: "Test")]
    
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

    }
    

}
