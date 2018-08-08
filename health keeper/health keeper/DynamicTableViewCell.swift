//
//  DynamicTableViewCell.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 2..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import UIKit

class DynamicTableViewCell: UITableViewCell {

    @IBOutlet weak var workImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
