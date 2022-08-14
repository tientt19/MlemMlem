//
//  BackgroundViewViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//

import UIKit

typealias OnClickListener = () -> Void
class BackgroundView: CustomView {

    @IBOutlet weak var titleLB: UILabel!
    @IBOutlet weak var backButton: UIButton!
    var backButtonListener: OnClickListener?
    
    func setTitle(_ title: String?) -> BackgroundView {
        if let title = title {
            titleLB.isHidden = false
            titleLB.text = title
            titleLB.minimumScaleFactor = 0.5
            titleLB.adjustsFontSizeToFitWidth = true
            
        } else {
            titleLB.isHidden = true
        }
        return self
    }
    
    func setBackListener(_  listener: OnClickListener?) -> BackgroundView {
        backButton.isHidden = listener == nil
        backButton.isEnabled = listener != nil
        if listener != nil {
            self.backButtonListener = listener
            backButton.setImage(UIImage(named: "ic_back"), for: .normal)
        } else {
            backButton.setImage(nil, for: .normal)
        }
        return self
    }
    
    func done() {
        // Setting done
    }
    
    @IBAction func backTap(_ sender: UIButton) {
        backButtonListener?()
    }
    
}
