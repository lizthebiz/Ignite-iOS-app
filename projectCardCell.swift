//
//  projectCardCell.swift
//  Ignite
//
//  Created by Liz Dalay on 11/11/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class projectCardCell: UITableViewCell {

    @IBOutlet weak var ownerImageView: UIImageView!
    
    @IBOutlet weak var ownerNameLabel: UILabel!
    
    @IBOutlet weak var projImageView: UIImageView!
    
    @IBOutlet weak var firstBadgeImageView: UIImageView!
    
    @IBOutlet weak var secondBadgeImageView: UIImageView!
    
    @IBOutlet weak var thirdBadgeImageView: UIImageView!
    
    @IBOutlet weak var projNameLabel: UILabel!
    
    @IBOutlet weak var projDescripLabel: UILabel!
    
    @IBOutlet weak var projStatusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}