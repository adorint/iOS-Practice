//
//  ViewController.swift
//  practice 2
//
//  Created by Dorin on 12/31/19.
//  Copyright © 2019 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    
    
    var list1 = ["FAHIM","JAHID","BADHON"]
    var list2 = ["ARIKA","LOVELU","AKASH"]
    var list3 = ["ABID","FAISAL","RAFI"]
    
    @IBOutlet weak var customTableView: UITableView!
    @IBOutlet weak var customTableView1: UITableView!
    @IBOutlet weak var customTableView2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customTableView.delegate = self
        customTableView.dataSource = self
//
//        customTableView1.delegate = self
//        customTableView1.dataSource = self
//
//        customTableView2.delegate = self
//        customTableView2.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var item_no:Int?
        
        if  tableView == customTableView{
            item_no = list1.count
        }
        else if tableView == customTableView1{
            item_no = list2.count
        }
        else if tableView == customTableView2{
            item_no = list3.count
        }
        
        
        return item_no ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var tableViewcell = UITableViewCell()
        
        if  tableView == customTableView{
            let cell:TableViewCell = customTableView.dequeueReusableCell(withIdentifier: "tcell", for: indexPath)as!TableViewCell
                cell.name.text = list1[indexPath.row]
        }
        
        return tableViewcell
    }
    
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        
        switch segmentControl.selectedSegmentIndex {
        case 0:
            print("inside segment Section 1")
            break
        case 1:
            print("inside segment Section 2")
            break
        case 2:
            print("inside segment Section 3")
            break
        default:
            break
        }
        
        
        //
        //        switch segmentControl.selectedSegmentIndex
        //            {
        //            case 0:
        //                func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //                    return list1.count
        //                }
        //
        //                func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //                    let Tablecell:TableViewCell = customTableView.dequeueReusableCell(withIdentifier: "tcell", for: indexPath)as!TableViewCell
        //                    Tablecell.UILabel.text = list1[indexPath.row]
        //                    return Tablecell
        //            }
        //
        //            case 1:
        //                func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        //                }
        //
        //                func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //                    let Tablecell:TableViewCell = customTableView.dequeueReusableCell(withIdentifier: "tcell", for: indexPath)as!TableViewCell
        //                    Tablecell.UILabel.text = list2[indexPath.row]
        //                    return Tablecell
        //            }
        //
        //            case 2:
        //                func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        //                }
        //
        //                func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //                    let Tablecell:TableViewCell = customTableView.dequeueReusableCell(withIdentifier: "tcell", for: indexPath)as!TableViewCell
        //                    Tablecell.UILabel.text = list2[indexPath.row]
        //                    return Tablecell
        //            }
        //
        //
        //            default:
        //                break
        //            }
        
        
        
        
        
        
        
        
        
    }
}


