//
//  MatchTableViewCell.swift
//  new QuickCast
//
//  Created by Ethan Geng on 01/11/2016.
//  Copyright © 2016 Ethan. All rights reserved.
//

import UIKit

class MatchTableViewCell: UITableViewCell {

    @IBOutlet var TeamName1: UILabel!
    @IBOutlet var TeamScore1: UILabel!
    @IBOutlet var TeamImageView1: UIImageView!
    
    @IBOutlet var TeamName2: UILabel!
    @IBOutlet var TeamScore2: UILabel!
    @IBOutlet var TeamImageView2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
