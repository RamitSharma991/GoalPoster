//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Ramit sharma on 26/06/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    
    
//Outlets
    @IBOutlet weak var createGoalbtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var  goalType: GoalType!
    
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalbtn.bindToKeyboard()
        pointsTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func createGoal(_ sender: Any) {
        
        //Pass data into Core Data Goal Model
        
    }
    
}
