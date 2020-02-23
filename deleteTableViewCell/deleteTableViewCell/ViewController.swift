//
//  ViewController.swift
//  deleteTableViewCell
//
//  Created by Dorin on 2/20/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tblList: UITableView!
    
    var numbers = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblList.dataSource = self
        tblList.delegate = self
        
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numCell", for: indexPath)
        cell.textLabel?.text = numbers[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            numbers.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    


}

