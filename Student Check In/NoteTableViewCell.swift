//
//  NoteTableViewCell.swift
//  Student Check In
//
//  Created by Don Loi on 19/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    
    let cellBackgroundColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1)
    
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var noteDescriptionLabel: UILabel!
    @IBOutlet weak var noteTimeCreatedLabel: UILabel!
    @IBOutlet weak var noteBackgroundView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //Change the selected cell colour to the default color and only highlight the cardview
        if selected {
            self.contentView.backgroundColor = UIColor.groupTableViewBackground
            noteBackgroundView.backgroundColor = cellBackgroundColor
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        //Creates an effect where only the cardview is highlighted in gray
        if highlighted {
            noteBackgroundView.backgroundColor = cellBackgroundColor
        } else {
            noteBackgroundView.backgroundColor = UIColor.white
        }
    }

}
