//
//  ViewTaskViewController.swift
//  Student Check In
//
//  Created by Don Loi on 25/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

class ViewTaskViewController: UIViewController {

    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var taskDueDateLabel: UILabel!
    @IBOutlet weak var taskDueTimeLabel: UILabel!
    @IBOutlet weak var taskDescriptionLabel: UITextViewFixed!
    
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let task = self.task {
            taskTitleLabel.text = task.title
            taskDueDateLabel.text = task.dueDate
            taskDueTimeLabel.text = task.dueTime
            taskDescriptionLabel.text = task.description
        }
        
        
        // Do any additional setup after loading the view.
    }

    

}
