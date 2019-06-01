//
//  TaskViewController.swift
//  Student Check In
//
//  Created by Don Loi on 23/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

extension Date {
    
    func month() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self)
    }
    
    func currentTime() -> String {
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = Util.time_format
        return dateFormatter.string(from: self)
    }
    
}

class TaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var taskTableView: UITableView!
    @IBOutlet weak var taskSearchBar: UISearchBar!
    
    //Stores the tasks to be loaded into the tableview
    var tasks: [Task] = []
    var filteredTasks: [Task] = []
    var dateFormatter: DateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firebaseManager = FirebaseManager()
        firebaseManager.attachTasksObserverTo(controller: self)
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Util.long_date_format
        taskSearchBar.delegate = self
        taskTableView.estimatedRowHeight = CGFloat(95)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewTaskSegue", let rowTapped = taskTableView.indexPathForSelectedRow?.row {
            let destination = segue.destination as! ViewTaskViewController
            destination.task = filteredTasks[rowTapped];
            taskTableView.deselectRow(at: IndexPath(row: rowTapped, section: 0), animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = filteredTasks[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "task", for: indexPath) as! TaskTableViewCell
        //Used to help parse the date string to a date object
        dateFormatter.dateFormat = Util.long_date_format
        cell.taskTitleLabel.text = task.title
        cell.taskDueTimeLabel.text = task.dueTime
        cell.taskDescriptionLabel.text = task.description
        if let dateAsObject = dateFormatter.date(from: task.dueDate) {
            //Redefine the format of the date formatter to a shorted format
            dateFormatter.dateFormat = Util.short_date_format
            //Store the formatted date string here
            let dateAsString = dateFormatter.string(from: dateAsObject)
            cell.taskDueDateLabel.text = dateAsString
        } else {
            
            cell.taskDueDateLabel.text = task.dueDate
        }
        return cell
    }
        
    /// Updates the task that was changed in the database
    ///
    /// - Parameter task: the task that was updated
    func updateTask(task: Task) {
        //Update the original source of tasks
        for index in 0...tasks.count - 1 {
            if tasks[index].id! == task.id! {
                tasks[index] = task
                break
            }
        }
        //Update the respective row in the task table
        for index in 0...filteredTasks.count - 1 {
            if filteredTasks[index].id! == task.id! {
                filteredTasks[index] = task
                taskTableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .fade)
                break
            }
        }

    }
    
    /// Adds a task to data source and the 
    ///
    /// - Parameter task: the task to append to the data source
    func addTask(task: Task) {
        tasks.append(task)
        if isKeywordInTaskTitle(task: task, keyword: taskSearchBar.text!) { //only append if it meets the criteria
            filteredTasks.append(task)
        } else { //Append to the filtered tasks if there is no text in the searchbar
            filteredTasks.append(task)
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterByCriteria(searchText: searchText)
    }

    func filterByCriteria(searchText: String) {
        //Clear the tasks list to prepare for filtering
        filteredTasks.removeAll()
        if !searchText.isEmpty {
            for task in tasks {
                //Filter by keyword in title
                if isKeywordInTaskTitle(task: task, keyword: searchText) {
                    filteredTasks.append(task)
                }
                //Filter by due month or due date and month
                //Parse the date string to date objet
                dateFormatter.dateFormat = Util.long_date_format
                if let date = dateFormatter.date(from: task.dueDate) {
                    //Only try to filter by date, if there the task date was parsed successfully
                    let calendar = Calendar.current
                    let taskDate = String(calendar.component(.day, from: date))
                    let taskMonth = date.month()
                    //Filter by just month
                    if searchText == taskMonth {
                        filteredTasks.append(task)
                    }
                    
                    //Split the searchText, delimited by a space
                    let searchTextSplit = searchText.split(separator: " ")
                    //Filter by specific date and month
                    if searchTextSplit.count == 2 {
                        if (searchTextSplit[0] == taskDate || searchTextSplit[0] == taskMonth)
                            && (searchTextSplit[1] == taskDate || searchTextSplit[1] == taskMonth) {
                                filteredTasks.append(task)
                        }
                    }
                }
            }
        } else {
            filteredTasks = tasks
        }
        taskTableView.reloadData()
    }
    
    func isKeywordInTaskTitle(task: Task, keyword: String) -> Bool {
        return task.title.lowercased().contains(keyword.lowercased())
    }
}
