//
//  ViewController.swift
//  twoTableViewInOneViewCntrlr
//  Created by Dorin on 2/5/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var array1 = ["A+","A'","A-","B+","B","B-","C+","C","D","F"]
    var array2 = ["4.00","3,75","3.50","3.00","2.75","2.50","2.00","1.80"]
    
    @IBOutlet weak var tableViewController: UITableView!
    @IBOutlet weak var tableViewController2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        setdelegate(tableview: tableViewController)
        setdelegate(tableview: tableViewController2)
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numberOfRow:Int?
        switch tableView {
        case tableViewController:
            numberOfRow = array1.count
        case tableViewController2:
            numberOfRow = array2.count
        default:
            print("Error!")
        }
        return numberOfRow ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var tcell = UITableViewCell()
        switch tableView{
        case tableViewController:
            let tcell1:customTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customTableViewCell
            tcell1.cellLabel.text = array1[indexPath.row]
            tcell = tcell1
            
        case tableViewController2:
            let tcell2:customTableViewCell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! customTableViewCell2
            tcell2.cellLabel2.text = array2[indexPath.row]
            tcell = tcell2
        default:
            print("Error!")
        }
        return tcell
        
        
        }
}
extension ViewController{
    func setdelegate(tableview:UITableView){
        tableview.delegate = self
        tableview.dataSource = self
    }
    
}
