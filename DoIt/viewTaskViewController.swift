//
//  viewTaskViewController.swift
//  DoIt
//
//  Created by Maggie on 2017-09-23.
//  Copyright © 2017 Maggie. All rights reserved.
//

import UIKit

class viewTaskViewController: UIViewController {
    
    var task : Task? = nil
    
    @IBOutlet weak var taskName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskName.text = "‼️\(task!.name!)"
        } else {
            taskName.text = task!.name!
        }
        
    }
    
    @IBAction func deleteTask(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController?.popViewController(animated: true)
    }

    
}
