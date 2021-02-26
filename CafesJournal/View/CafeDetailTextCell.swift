//
//  CafeDetailTextCell.swift
//  CafesJournal
//
//  Created by elina.zambere on 20/02/2021.
//

import UIKit

class CafeDetailTextCell: UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.numberOfLines = 0
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
