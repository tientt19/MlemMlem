//
//  TabbarItem.swift
//  1SK
//
//  Created by tuyenvx on 20/01/2021.
//

import UIKit

enum TabbarItem {
    case control
    case account
    case menu
    case saleReport
    case SCM

    var item: UITabBarItem {
        switch self {
        case .control:
            let tabBarItem = UITabBarItem(title: ".",
                                       image: self.tabbarImage(with: R.image.ic_tab1_unselected()),
                                       selectedImage: self.tabbarImage(with: R.image.ic_tab1_selected()))

            return tabBarItem
            
        case .account:
            let tabBarItem =  UITabBarItem(title: ".",
                                image: self.tabbarImage(with: R.image.ic_tab2_unselected()),
                                selectedImage: self.tabbarImage(with: R.image.ic_tab2_selected()))
            return tabBarItem
            
        case .menu:
            let tabBarItem =  UITabBarItem(title: ".",
                                image: self.tabbarImage(with: R.image.ic_tab3_unselected()),
                                selectedImage: self.tabbarImage(with: R.image.ic_tab3_selected()))
            return tabBarItem
            
        case .saleReport:
            let tabBarItem =  UITabBarItem(title: ".",
                                image: self.tabbarImage(with: R.image.ic_tab4_unselected()),
                                selectedImage: self.tabbarImage(with: R.image.ic_tab4_selected()))
            return tabBarItem
            
        case .SCM:
            let tabBarItem =  UITabBarItem(title: ".",
                                image: self.tabbarImage(with: R.image.ic_tab5_unselected()),
                                selectedImage: self.tabbarImage(with: R.image.ic_tab5_selected()))
            return tabBarItem
        }
    }

    private func tabbarImage(with image: UIImage?) -> UIImage? {
        return image?.withRenderingMode(.alwaysOriginal)
    }
}
