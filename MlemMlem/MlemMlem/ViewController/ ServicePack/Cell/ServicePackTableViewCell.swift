//
//  ServicePackTableViewCell.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//

import UIKit
class ServicePackTableViewCell: UITableViewCell {

    var delegate: ServicePackRouterProtocol?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func tapChoose(_ sender: UIButton) {
        delegate?.gotoServicePackDetail()
    }
}
