//
//  createGoalsVC.swift
//  GoalPost
//
//  Created by Ramit sharma on 03/05/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit

class createGoalsVC: UIViewController, UITextViewDelegate {
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.bindToKeyboard()
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
        goalTextView.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
        
        if goalTextView.text != "" && goalTextView.text != "what is your goal?" {
            
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else {return}
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            
            presentDetail(finishGoalVC)
        }
    }
    @IBAction func shortTerm(_ sender: Any) {
         goalType = .shortTerm
        shortTermButton.setDeselectedColor()
        longTermButton.setDeselectedColor()
    }
    
    @IBAction func longTerm(_ sender: Any) {
        goalType = .longterm
        longTermButton.setSelectedColor()
        shortTermButton.setDeselectedColor()
    }
    @IBAction func Back(_ sender: Any) {
        dismissDetail()
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
