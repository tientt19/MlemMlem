//
//  CellCollectionView.swift
//  MlemMlem
//
//  Created by Tiến Trần on 18/08/2022.
//

import UIKit

class CellCollectionView: UICollectionViewCell {

    @IBOutlet weak var lbl_Title: UILabel!
    @IBOutlet weak var view_underLine: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var isSelected: Bool {
        didSet {
            self.view_underLine.backgroundColor = isSelected ? UIColor(hex: "F16431") : .clear
            self.lbl_Title.textColor = isSelected ? UIColor(hex: "F16431") : UIColor(hex: "A7B0C0")
        }
    }

}
