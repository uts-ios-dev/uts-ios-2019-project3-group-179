//
//  TaskViewController.swift
//  Student Check In
//
//  Created by Don Loi on 23/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit
import MaterialComponents.MDCActivityIndicator

extension Date {
    
    func month() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self)
    }
    
    func currentTime() -> String {
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = Util.short_date_format + " " + Util.time_format
        return dateFormatter.string(from: self)
    }
    
}

class TaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var taskTableView: UITableView!
    @IBOutlet weak var taskSearchBar: UISearchBar!
    @IBOutlet weak var progressBar: MDCActivityIndicator!
    
    //Stores the tasks to be loaded into the tableview
    var tasks: [Task] = []
    var filteredTasks: [Task] = []
    var dateFormatter: DateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firebaseManager = FirebaseManager()
        firebaseManager.attachTasksObserverTo(controller: self)
        //Setup the progressbar
        progressBar.sizeToFit()
        progressBar.startAnimating()
        progressBar.indicatorMode = .indeterminate
        //Make the progressbar only display one colour
        progressBar.cycleColors = [UIColor.red]
        //Create a date formatter to be used
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
        } else if segue.identifier == "LoginViewSegue" {
            let _ = segue.destination as! LoginViewController
        }
    }
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        let auth = FirebaseAuthManager()
        if auth.logout() {
            performSegue(withIdentifier: "LoginViewSegue", sender: nil)
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
            let calendar = Calendar.current
            var dueDateComponents = DateComponents()
            //Extract the year, month and day components from the object
            dueDateComponents.year = calendar.component(.year, from: dateAsObject)
            dueDateComponents.month = calendar.component(.month, from: dateAsObject)
            dueDateComponents.day = calendar.component(.day, from: dateAsObject)
            
            dateFormatter.dateFormat = Util.time_format
            if let timeAsObject = dateFormatter.date(from: task.dueTime) {
                dueDateComponents.hour = calendar.component(.hour, from: timeAsObject)
                dueDateComponents.minute = calendar.component(.minute, from: timeAsObject)
            }
            
            //Reconstruct the date with the hour and minutes
            //This will be needed for the status checking
            let dueDate = calendar.date(from: dueDateComponents)
            
            //Redefine the format of the date formatter to a shorter format
            dateFormatter.dateFormat = Util.short_date_format
            //Store the formatted date string here
            let dateAsString = dateFormatter.string(from: dateAsObject)
            cell.taskDueDateLabel.text = dateAsString
            //Set the task status color according to three rules
            //Green - complete
            //Orange - pending
            //Red - overdue
            if task.isCompleted == "Yes" {
                cell.completionIndicatorView.backgroundColor = .green
            } else {
                //Calculate the difference from the due date to today
                let differenceInSeconds = dueDate!.timeIntervalSince1970 - Date().timeIntervalSince1970
                //Divide difference by 60 to get the difference in minutes
                let minutes: Double = differenceInSeconds / Double(60)
                if minutes < 0 { //If the task is overdue
                    cell.completionIndicatorView.backgroundColor = .red
                } else {
                    cell.completionIndicatorView.backgroundColor = .orange
                }
            }
            
        } else {
            //if unable to format just use what is stored
            cell.taskDueDateLabel.text = task.dueDate
        }
        
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterByCriteria(searchText: searchText)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //Resign the searchbar responder when done is clicked
        searchBar.resignFirstResponder()
    }
        
    /// Updates the task that was changed in the database
    ///
    /// - Parameter task: the task that was updated
    func updateTask(task: Task) {
        //Update the original source of tasks
        for index in 0..<tasks.count {
            if tasks[index].id! == task.id! {
                tasks[index] = task
                break
            }
        }
        //Update the respective row in the task table
        for index in 0..<filteredTasks.count {
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
        } else if taskSearchBar.text!.isEmpty{ //Append to the filtered tasks if there is no text in the searchbar
            filteredTasks.append(task)
        }
        taskTableView.reloadData()
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
