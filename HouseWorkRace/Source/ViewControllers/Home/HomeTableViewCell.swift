//
//  HomeTableViewCell.swift
//  HouseWorkRace
//
//  Created by GOngTAE on 2022/02/14.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var superView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        superView.layer.masksToBounds = true
        superView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
