//
//  MenuSectionTableViewCell.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/11/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class MenuSectionTableViewCell: UITableViewCell {

    @IBOutlet weak var menuSectionImageView: UIImageView!
    @IBOutlet weak var menuSectionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
