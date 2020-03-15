//
//  todoCell.swift
//  toDoList
//
//  Created by Arika Afrin Boshra on 15/3/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit

class todoCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    @IBOutlet weak var checkMark: UIImageView!
    var checked = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

}
