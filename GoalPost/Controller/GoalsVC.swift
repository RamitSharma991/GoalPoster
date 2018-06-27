//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Ramit sharma on 24/04/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class GoalsVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let goal = Goal()
        goal.goalCompletionValue = Int32(exactly: 12)!
        tableView.isHidden = false
        
    }
    
    
    @IBAction func addGoalButtonWasPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "createGoalVC") else { return }
        presentDetail(createGoalVC)
    }
    
}


extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "iDgoalCell") as? goalCell else {return UITableViewCell() }
        
        cell.configureCell(description: "Eat Salad twice a week", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}

