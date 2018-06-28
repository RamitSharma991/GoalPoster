//
//  goalCell.swift
//  GoalPost
//
//  Created by Ramit sharma on 24/04/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit
import CoreData

class goalCell: UITableViewCell {
    
//outlets
    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    
    func configureCell(goal: Goal) {
        
        self.goalDescriptionLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgressLabel.text = String(goal.goalProgress)
     
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }
    


}
