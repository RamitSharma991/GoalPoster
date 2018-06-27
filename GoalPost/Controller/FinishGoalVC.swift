//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Ramit sharma on 26/06/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit
import CoreData

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
    @IBAction func backButton(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createGoal(_ sender: Any) {
        //Pass data into Core Data Goal Model
        
        if pointsTextField.text != "" {
            
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                    
                }
                
            }
            
        }
        
    }
    
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = description
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            
            try managedContext.save()
            print("successfully saved data")
            completion(true)
            
        }
        catch {
            debugPrint("could not save: \(error.localizedDescription)")
            completion(false)
        }
        
    }
    
}
