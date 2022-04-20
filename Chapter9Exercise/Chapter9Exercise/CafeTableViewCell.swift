//
//  CafeTableViewCell.swift
//  Chapter9Exercise
//
//  Created by admin on 20/04/22.
//

import UIKit

class CafeTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var locationLabel:UILabel!
    @IBOutlet var typeLAbel:UILabel!
    @IBOutlet var thumbnailImageView:UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
