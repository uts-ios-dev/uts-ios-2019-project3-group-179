//
//  TaskTableViewCell.swift
//  Student Check In
//
//  Created by Don Loi on 23/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var taskBackground: UIView!
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var taskDueDateLabel: UILabel!
    @IBOutlet weak var taskDueTimeLabel: UILabel!
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    @IBOutlet weak var completionIndicatorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: false)
        if selected {
            taskBackground.backgroundColor = UIColor.groupTableViewBackground
            print("Selected...")
        } else {
            contentView.backgroundColor = completionIndicatorView.tintColor
            
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        if highlighted {
            taskBackground.backgroundColor = UIColor.groupTableViewBackground
        } else {
            taskBackground.backgroundColor = UIColor.white
        }
    }

}
