//
//  KitchenViewTableViewCell.swift
//  MlemMlem
//
//  Created by TruongTV2 on 17/08/2022.
//

import UIKit

class CellTableViewKitchenView: UITableViewCell {

    @IBOutlet weak var stack_dish: UIStackView!
    @IBOutlet weak var stack_AmountDish: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
