//
//  FileTableViewCell.swift
//  Student Check In
//
//  Created by Don Loi on 26/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit

class FileTableViewCell: UITableViewCell {

    @IBOutlet weak var fileNameLabel: UILabel!
    @IBOutlet weak var fileDownloadButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
