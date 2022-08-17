//
//  UIColor.swift
//  myElcom
//
//  Created by Valerian on 13/05/2022.
//

import UIKit

extension UIColor {
    convenience init(hex: String) {
        var rgbString = hex
        if rgbString.hasPrefix("#") {
            rgbString.removeFirst()
        }
        rgbString = rgbString.capitalized
        var rgb: UInt64 = 0
        Scanner(string: rgbString).scanHexInt64(&rgb)
        self.init(rgb: rgb, alpha: 1)
    }

    convenience init(hex: String, alpha: CGFloat) {
        var rgbString = hex
        if rgbString.hasPrefix("#") {
            rgbString.removeFirst()
        }
        var rgb: UInt64 = 0
        Scanner(string: rgbString).scanHexInt64(&rgb)
        self.init(rgb: rgb, alpha: alpha)
    }

    convenience init(rgb: UInt64, alpha: CGFloat) {
        self.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgb & 0x0000FF) / 255.0,
                  alpha: alpha
        )
    }
    
    //MARK: static color
    static var Gray4F596A: UIColor { return UIColor(hex: "4F596A")}
    static var GrayD2DAE3: UIColor { return UIColor(hex: "D2DAE3")}
    static var Gray7A8598: UIColor { return UIColor(hex: "7A8598")}
    static var GrayF1F1F4: UIColor { return UIColor(hex: "F1F1F4")}
    static var GrayF4F4F7: UIColor { return UIColor(hex: "F4F4F7")}
    static var OrangeFDB355: UIColor { return UIColor(hex: "FDB355")}
    static var OrangeFE7A3E: UIColor { return UIColor(hex: "FE7A3E")}
    static var OrangeFE8F47: UIColor { return UIColor(hex: "FE8F47")}
    static var OrangeFDECDB: UIColor { return UIColor(hex: "FDECDB")}
    static var RedE63143: UIColor { return UIColor(hex: "E63143")}
    static var Black0E1A2A: UIColor { return UIColor(hex: "0E1A2A")}
}
