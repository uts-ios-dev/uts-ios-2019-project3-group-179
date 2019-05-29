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

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
   
    @IBOutlet weak var notesTableView: UITableView!
    @IBOutlet weak var progressBar: MDCActivityIndicator!
    @IBOutlet weak var noteSearchBar: UISearchBar!
    
    var firebaseManager: FirebaseManager!
    //Store all the note data
    var notes: [Note] = []
    //Stores a list of the filtered data
    var filteredNotes: [Note] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firebaseManager = FirebaseManager()
        firebaseManager.attachNotes ObserverTo(controller: self)
        noteSearchBar.delegate = self
        //Setup the indeterminate progressbar
        progressBar.sizeToFit()
        progressBar.startAnimating()
        progressBar.indicatorMode = .indeterminate
        //Make the progressbar only display one colour
        progressBar.cycleColors = [UIColor.red]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewNoteSegue", let rowTapped = notesTableView.indexPathForSelectedRow?.row {
            let destination = segue.destination as! ViewNoteViewController
            destination.note = filteredNotes[rowTapped]
            notesTableView.deselectRow(at: IndexPath(row: rowTapped, section: 0), animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredNotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "note", for: indexPath) as! NoteTableViewCell
        cell.noteTitleLabel.text = filteredNotes[indexPath.row].title
        cell.noteDescriptionLabel.text = filteredNotes[indexPath.row].description
        cell.noteTimeCreatedLabel.text = filteredNotes[indexPath.row].timeCreated
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterByCriteria(searchText: searchText)
    }
    
    
    /// Adds a note to the data source and the filter list
    ///
    /// - Parameter note: the note to add to the data
    func addNote(note: Note) {
        notes.append(note)
        //Only append the data to the tableview source if there is no filter
        if isKeywordInNoteTitle(note: note, keyword: noteSearchBar.text!) {
            filteredNotes.append(note)
        } else {
            filteredNotes.append(note)
        }
    }
    
    /// Reflects the changes of a note in the tableview
    ///
    /// - Parameter updateNote: the note that was changed
    func updateNote(_ updateNote: Note) {
        //Update the original source of notes
        for index in 0...notes.count - 1 {
            //Update the data source that doesn't get filtered
            if notes[index].id! == updateNote.id! {
                notes[index] = updateNote
                break
            }
        }
        //Update the respective row in the tableview
        for index in 0...filteredNotes.count - 1 {
            if filteredNotes[index].id! == updateNote.id! {
                filteredNotes[index] = updateNote
                notesTableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .fade)
            }
        }
    }
    
    /// Filters the notes by either date or a title keyword
    ///
    /// - Parameter searchText: the text to filter by
    func filterByCriteria(searchText: String) {
        if !searchText.isEmpty {
            //Clear the filtered notes and add in notes that meet the critera
            filteredNotes.removeAll()
            for note in notes {
                //Match based on title keywords
                if isKeywordInNoteTitle(note: note, keyword: searchText) {
                    filteredNotes.append(note)
                }
            }
        
        } else { //if the searchbar is empty
            //Show all the users notes
            filteredNotes = notes
        }
        notesTableView.reloadData()
    }
    
    /// Determines if the keyword is contained in the note title
    ///
    /// - Parameters:
    ///   - note: the note to check
    ///   - keyword: the keyword to check if it is contained in the title
    /// - Returns: true if the keyword is in the title otherwise false
    func isKeywordInNoteTitle(note: Note, keyword: String) -> Bool {
        return note.title.lowercased().contains(keyword.lowercased())
    }
    
    
}
