//
//  viewTaskViewController.swift
//  DoIt
//
//  Created by Maggie on 2017-09-23.
//  Copyright © 2017 Maggie. All rights reserved.
//

import UIKit

class viewTaskViewController: UIViewController {

    var previousVC = TasksViewController()
    
    var task = Task()
    
    @IBOutlet weak var taskName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskName.text = "‼️\(task.name)"
        } else {
            taskName.text = task.name
        }
        
    }
    
    @IBAction func deleteTask(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }

    
}
