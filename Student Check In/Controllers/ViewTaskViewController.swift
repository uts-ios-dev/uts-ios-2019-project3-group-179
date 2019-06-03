//
//  ViewTaskViewController.swift
//  Student Check In
//
//  Created by Don Loi on 25/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit
import MaterialComponents.MDCFloatingButton

class ViewTaskViewController: UIViewController {

    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var taskDueDateLabel: UILabel!
    @IBOutlet weak var taskDueTimeLabel: UILabel!
    @IBOutlet weak var taskDescriptionLabel: UITextViewFixed!
    @IBOutlet weak var taskCompleteButton: MDCFloatingButton!
    
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let task = self.task {
            taskTitleLabel.text = task.title
            taskDueDateLabel.text = task.dueDate
            taskDueTimeLabel.text = task.dueTime
            taskDescriptionLabel.text = task.description
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editTaskSegue" {
            let destination = segue.destination as! AddTaskViewController
            destination.task = task
            destination.sendingViewController = self
        }
    }

    @IBAction func editButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "editTaskSegue", sender: nil)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func taskCompleteButtonTapped(_ sender: MDCFloatingButton) {
        if self.task != nil {
            //Only update the task as complete if it is not complete
            if self.task!.isCompleted == "No" {
                self.task?.isCompleted = "Yes"
                FirebaseRepoManager().updateTask(task: &self.task!)
                showTaskCompletePrompt()
            }
        }
    }
    
    func showTaskCompletePrompt() {
        let promptController = Util.getPromptAlertController(title: "Great Job!", message: "Task is now marked as complete", cancelTitle: "OK")
        self.present(promptController, animated: true, completion: nil)
    }
    
}
