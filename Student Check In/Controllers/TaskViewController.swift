//
//  TaskViewController.swift
//  Student Check In
//
//  Created by Don Loi on 23/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var taskTableView: UITableView!
    
    //Stores the tasks to be loaded into the tableview
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firebaseManager = FirebaseManager()
        firebaseManager.attachTasksObserverTo(controller: self)
        taskTableView.estimatedRowHeight = CGFloat(95)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = tasks[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "task", for: indexPath) as! TaskTableViewCell
        cell.taskTitleLabel.text = task.title
        cell.taskDueDateLabel.text = task.dueDate
        cell.taskDueTimeLabel.text = task.dueTime
        cell.taskDescriptionLabel.text = task.description
        return cell
    }
    
    /// Handles the cell tap on the task tableview
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewTaskController = storyboard.instantiateViewController(withIdentifier: "ViewTaskController") as! ViewTaskViewController
        viewTaskController.task = tasks[indexPath.row]
        self.present(viewTaskController, animated: true, completion: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func updateTask(task: Task) {
        for index in 0...tasks.count - 1 {
            if tasks[index].id! == task.id! {
                tasks[index] = task
                taskTableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .fade)
                break
            }
        }
    }

}
