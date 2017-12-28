//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Michael Baumgaertner on 28.12.17.
//  Copyright © 2017 Michael Baumgaertner. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    var previousVC = TasksViewController()
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
        
    }


}
