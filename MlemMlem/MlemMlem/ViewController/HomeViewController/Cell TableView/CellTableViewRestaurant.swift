//
//  CellTableViewRestaurant.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//

import UIKit

class CellTableViewRestaurant: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
