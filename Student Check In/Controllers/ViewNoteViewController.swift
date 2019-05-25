//  This controller is responsible for handling the user input and logic required for viewing a note

//  ViewNoteViewController.swift
//  Student Check In
//
//  Created by Don Loi on 22/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

extension String {
    
    func asUnderLineAttributeText() -> NSAttributedString {
        return NSAttributedString(string: self, attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue])
    }
    
}

class ViewNoteViewController: UIViewController {

    @IBOutlet weak var navigationBarTitle: UINavigationItem!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var noteDescriptionLabel: UITextView!
    
    /* Store the note we are going to view */
    var note: Note?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let note = self.note {
            noteTitleLabel.attributedText = note.title.asUnderLineAttributeText()
            noteDescriptionLabel.text = note.description
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }

    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editButtonTapped(_ sender: Any) {
        //put code in to send to add note but to edit
        performSegue(withIdentifier: "editNoteSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editNoteSegue" {
            let editNoteController = segue.destination as! AddNoteViewController
            editNoteController.note = note
            editNoteController.viewNoteController = self
        }
    }
    
}
