//
//  customTableViewCell.swift
//  twoTableViewInOneViewCntrlr
//
//  Created by Dorin on 2/5/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
