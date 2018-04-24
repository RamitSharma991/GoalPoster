//
//  goalCell.swift
//  GoalPost
//
//  Created by Ramit sharma on 24/04/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit

class goalCell: UITableViewCell {
    
//outlets
    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configureCell(description: String, type: String, goalProgressAmount: Int) {
        
        self.goalDescriptionLabel.text = description
        self.goalTypeLabel.text = type
        self.goalProgressLabel.text = String(describing: goalProgressAmount)
        
    }

}
