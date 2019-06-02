//
//  AddTaskViewController.swift
//  Student Check In
//
//  Created by Don Loi on 25/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit


//This extension is used to include a done button for the date picker
extension UIToolbar {
    
    func withCancelAndDone(cancelSelector: Selector, doneSelector: Selector) -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.blue
        toolbar.barStyle = .default
        toolbar.isTranslucent = true
        toolbar.sizeToFit()
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: cancelSelector)
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: doneSelector)
        
        toolbar.setItems([cancelButton, space, doneButton], animated: false)
        toolbar.isUserInteractionEnabled = true
        return toolbar
    }
}

class AddTaskViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var taskTitleTextField: UITextField!
    @IBOutlet weak var taskDueDateTextField: UITextField!
    @IBOutlet weak var taskDueTimeTextField: UITextField!
    @IBOutlet weak var taskDescriptionTextView: UITextView!
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    var firebaseRepoManager: FirebaseRepoManager!
    var dateFormatter: DateFormatter!
    var datePicker: UIDatePicker!
    var timePicker: UIDatePicker!
    var task: Task?
    var sendingViewController: ViewTaskViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        firebaseRepoManager = FirebaseRepoManager()
        dateFormatter = DateFormatter()
        datePicker = UIDatePicker()
        addButton.isEnabled = false
        taskDescriptionTextView.delegate = self
        taskTitleTextField.delegate = self
        taskDueDateTextField.delegate = self
        taskDueTimeTextField.delegate = self
        taskTitleTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        taskDueDateTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        taskDueTimeTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        //If task is not nil then the user is editing a task
        if let task = self.task {
            addButton.title = "Save"
            taskTitleTextField.text = task.title
            taskDueDateTextField.text = task.dueDate
            taskDueTimeTextField.text = task.dueTime
            taskDescriptionTextView.text = task.description
        } else {
            setUpPlaceHolderText()
        }
    }
    
    @IBAction func dueDateEditingBegan(_ sender: UITextField) {
        datePicker.datePickerMode = .date
        sender.inputView = datePicker
        sender.inputAccessoryView = UIToolbar().withCancelAndDone(cancelSelector: #selector(cancelTapped), doneSelector: #selector(doneTapped))
    }
    
    @IBAction func dueTimeEditingBegan(_ sender: UITextField) {
        datePicker.datePickerMode = .time
        sender.inputView = datePicker
        sender.inputAccessoryView = UIToolbar().withCancelAndDone(cancelSelector: #selector(cancelTapped), doneSelector: #selector(doneTapped))
    }
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        let title = taskTitleTextField.text!
        let dueDate = taskDueDateTextField.text!
        let dueTime = taskDueTimeTextField.text!
        let description = taskDescriptionTextView.text!
        if addButton.title == "Add" { //The user is adding a task
            var task = Task(title: title, dueDate: dueDate, dueTime: dueTime, description: description, isCompleted: "No")
            firebaseRepoManager.addTask(task: &task)
        } else { //the user is editing a task
            task!.title = title
            task!.dueDate = dueDate
            task!.dueTime = dueTime
            task!.description = description
            firebaseRepoManager.updateTask(task: &task!)
            sendingViewController?.task = task!
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /// Handles the cancel button tapped when the datepicker is visible
    @objc func cancelTapped() {
        if taskDueDateTextField.isFirstResponder {
            taskDueDateTextField.resignFirstResponder()
        } else if taskDueTimeTextField.isFirstResponder {
            taskDueTimeTextField.resignFirstResponder()
        }
    }
    
    /// Handles the done button tapped when the datepicker is visible
    @objc func doneTapped() {
        let selectedValue = datePicker.date
        var formattedValue: String? = nil
        //Format the selected value based on whether the picker is in date or time mode
        if datePicker.datePickerMode == .date {
            dateFormatter.dateFormat = Util.long_date_format
            formattedValue = dateFormatter.string(from: selectedValue)
        } else {
            dateFormatter.dateFormat = Util.time_format
            formattedValue = dateFormatter.string(from: selectedValue)
        }
        //Set the value for the respective textfields
        if taskDueDateTextField.isFirstResponder {
            taskDueDateTextField.text = formattedValue
            taskDueTimeTextField.becomeFirstResponder()
        } else if taskDueTimeTextField.isFirstResponder {
            taskDueTimeTextField.text = formattedValue
            taskDescriptionTextView.becomeFirstResponder()
        }
        tryToEnableAddButton()
    }
    
    @objc func textFieldDidChange(_ sender: UITextField) {
        tryToEnableAddButton()
    }
    
    internal func textViewDidChange(_ textView: UITextView) {
        tryToEnableAddButton()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == Util.placeholderTextColor {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            taskDescriptionTextView.textColor = Util.placeholderTextColor
            textView.text = "Enter a description for the task"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == taskTitleTextField {
            taskDueDateTextField.becomeFirstResponder()
        }
        return true
    }
    
    func setUpPlaceHolderText() {
        taskDescriptionTextView.textColor = Util.placeholderTextColor
        taskDescriptionTextView.text = "Enter a description for the task"
    }
    
    func tryToEnableAddButton() {
        addButton.isEnabled = !Util.areAnyTextFieldsEmpty(textFields: [taskTitleTextField, taskDueDateTextField, taskDueTimeTextField]) && !taskDescriptionTextView.text.isEmpty && taskDescriptionTextView.textColor != Util.placeholderTextColor
    }


}
