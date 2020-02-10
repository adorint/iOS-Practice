//
//  xpntblTableViewCell.swift
//  expantableTableVIew
//
//  Created by Dorin on 2/9/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class xpntblTableViewCell: UITableViewCell {

    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
