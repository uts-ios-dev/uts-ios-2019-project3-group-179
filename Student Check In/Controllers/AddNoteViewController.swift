//  This controller is used to handle the user input for adding a note and the UI logic
//  AddNoteViewController.swift
//  Student Check In
//
//  Created by Don Loi on 21/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBOutlet weak var noteTitleTextField: UITextField!
    @IBOutlet weak var noteDescriptionTextView: UITextView!
    
    var firebaseRepoManager: FirebaseRepoManager!
    var note: Note?
    var sendingController: ViewNoteViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firebaseRepoManager = FirebaseRepoManager()
        noteTitleTextField.delegate = self
        noteDescriptionTextView.delegate = self
        
        /* disable it in the start so that it can be enabled once there is text in both the title and description */
        addButton.isEnabled = false
        //If note is not nil then the user is editing a note
        if let note = self.note {
            noteTitleTextField.text = note.title
            noteDescriptionTextView.text = note.description
            addButton.title = "Save"
        } else {
            setDescriptionPlaceHolder()
        }
        /* notify the action when the text changes*/
        noteTitleTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let title = noteTitleTextField.text!
        let description = noteDescriptionTextView.text!
        if addButton.title == "Add" { //User is creating a new note
            var note = Note(title: title, description: description, timeCreated: Date().currentTime())
            firebaseRepoManager.addNote(note: &note)
        } else { //the user is updating a note
            note!.title = title
            note!.description = description
            firebaseRepoManager.updateNote(note: note!)
            sendingController!.note = note!
        }
        self.dismiss(animated: true, completion: nil)

    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    internal func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == Util.placeholderTextColor {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    internal func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            setDescriptionPlaceHolder()
        }
    }
    
    /// Notifies the application whether the textview changed or not
    ///
    /// - Parameter textView: the textview that changed
    internal func textViewDidChange(_ textView: UITextView) {
        tryToEnableAddButton()
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        tryToEnableAddButton()
    }
    
    /// Enables the add navigation button if the title and description text isn't empty
    func tryToEnableAddButton() {
        addButton.isEnabled = !Util.areAnyTextFieldsEmpty(textFields: [noteTitleTextField]) && (!noteDescriptionTextView.text.isEmpty && noteDescriptionTextView.textColor != Util.placeholderTextColor)
    }
    
    /// Sets the placeholder text for the description textview
    func setDescriptionPlaceHolder() {
        /* this UIColor is the default placeholder text color*/
        noteDescriptionTextView.textColor = Util.placeholderTextColor
        noteDescriptionTextView.text = "What's new?"
    }
    
    
}
