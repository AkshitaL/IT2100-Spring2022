//
//  ActivityTableViewCell.swift
//  Lab7-TableView
//
//  Created by Akshita Lathar on 3/6/22.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {

    @IBOutlet weak var activity: UILabel!
    @IBOutlet weak var activityNote: UILabel!
    @IBOutlet weak var activityCost: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
