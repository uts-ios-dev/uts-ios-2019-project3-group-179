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
    
    let placeholderTextColor = UIColor(red: 0, green: 0, blue: 0.0980392, alpha: 0.22)

    var firebaseRepoManager: FirebaseRepoManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firebaseRepoManager = FirebaseRepoManager()
        noteTitleTextField.delegate = self
        noteDescriptionTextView.delegate = self
        setDescriptionPlaceHolder()
        /* disable it in the start so that it can be enabled once there is text in both the title and description */
        addButton.isEnabled = false
        /* notify the action when the text changes*/
        noteTitleTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        if let title = noteTitleTextField.text, let description = noteDescriptionTextView.text {
            firebaseRepoManager.addNote(note: Note(title: title, description: description, timeCreated: "12:40"))
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    internal func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == placeholderTextColor {
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
        if let noteTitle = noteTitleTextField.text {
            addButton.isEnabled = !noteTitle.isEmpty && (!noteDescriptionTextView.text.isEmpty && noteDescriptionTextView.textColor != placeholderTextColor)
        }
    }
    
    /// Sets the placeholder text for the description textview
    func setDescriptionPlaceHolder() {
        /* this UIColor is the default placeholder text color*/
        noteDescriptionTextView.textColor = placeholderTextColor
        noteDescriptionTextView.text = "What's new?"
    }
    
    
}
