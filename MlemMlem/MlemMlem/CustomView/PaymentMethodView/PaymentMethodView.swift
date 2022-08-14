//
//  PaymentMethodView.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/14/22.
//

import UIKit

enum typeMethodPayment {
    case money
    case eWallet
    case cash
}

class PaymentMethodView: CustomView {
    
    @IBOutlet var view_background: UIView!
    @IBOutlet weak var view_backgroundMethodPayment: UIView!
    @IBOutlet weak var lbl_methodPayment: UILabel!
    @IBOutlet weak var img_checkMethodPayment: UIImageView!
    @IBOutlet weak var img_methodPayment: UIImageView!
    
    func setTypePaymentMethod(_ type: typeMethodPayment) -> PaymentMethodView {
        switch type {
        case .money:
            lbl_methodPayment.text = "Tiền Mặt"
            img_methodPayment.image = R.image.ic_cash()
            
        case .eWallet:
            lbl_methodPayment.text = "Ví Điện Tử"
            img_methodPayment.image = R.image.ic_eWallet()
            
        case .cash:
            lbl_methodPayment.text = "Thẻ Tín Dụng"
            img_methodPayment.image = R.image.ic_cash()
        }
        return self
    }
    
    func checkPaymentMethod(_ check: Bool) {
        if check == true {
            view_background.backgroundColor = .OrangeFE7A3E
            img_checkMethodPayment.image = R.image.ic_check_chosen()
            lbl_methodPayment.textColor = .white
            view_backgroundMethodPayment.backgroundColor = .white
        
        } else {
            view_background.backgroundColor = .white
            img_checkMethodPayment.image = UIImage(named: "ic_unselected")
            lbl_methodPayment.textColor = .Gray4F596A
            view_backgroundMethodPayment.backgroundColor = .OrangeFDECDB
        }
    }
    
    func done() {}
}
