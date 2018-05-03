//
//  createGoalsVC.swift
//  GoalPost
//
//  Created by Ramit sharma on 03/05/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit

class createGoalsVC: UIViewController {
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
    }
    @IBAction func shortTerm(_ sender: Any) {
    }
    
    @IBAction func longTerm(_ sender: Any) {
    }
    @IBAction func Back(_ sender: Any) {
        dismissDetail()
    }
}
