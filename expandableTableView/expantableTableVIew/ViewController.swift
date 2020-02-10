//
//  ViewController.swift
//  expantableTableVIew
//
//  Created by Dorin on 2/9/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cname = ["Bangladesh","India","Pakistan"]
    var image = ["BD.PNG","india.PNG","pkstn.PNG"]
    var details = ["Bangladesh is a country in Southern Asia", "India, country that occupies the greater part of South Asia", "Pakistan is a country in southern Asia."]
    
    var selectedIndex = -1
    var collapased = false
    
    @IBOutlet weak var xtnblTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        xtnblTableView.estimatedRowHeight = 140
        xtnblTableView.rowHeight = UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.selectedIndex == indexPath.row && collapased == true
        {
            return 170
        }
        else
        {
            return 50
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cname.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "xcell")as! xpntblTableViewCell
        cell.countryLabel.text! = cname[indexPath.row]
        cell.countryImage.image = UIImage(named: "\(image[indexPath.row])")
        cell.detailsLabel.text! = details[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        
        if selectedIndex == indexPath.row
        {
            if self.collapased == false {
                if self.collapased == true{
                }
                
            }
                
            else
            {
                if self.collapased == false {
                    
                    
                }
            }
        }
            
        else
        {
            self.collapased = true
        }
        
        self.selectedIndex = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
    }
    
    
    
    
    
}

