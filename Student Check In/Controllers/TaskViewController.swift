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
        taskTableView.estimatedRowHeight = CGFloat(95)
        tasks.append(Task(title: "Test", dueDate: "Test", dueTime: "Test", description: "this is a very long test"))
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

}
