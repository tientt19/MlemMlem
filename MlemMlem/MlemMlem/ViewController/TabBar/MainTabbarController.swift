//
//  MainTabbarController.swift
//  1SK
//
//  Created by tuyenvx on 12/01/2021.
//

import UIKit
//import AppTrackingTransparency
//import AdSupport

// MARK: UITabBarController
class MainTabbarController: UITabBarController {
    
//    var exerciseService = ExerciseService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setInitAddItemTabBarController()
//        self.setInitNotificationCenter()
        //self.setInitATTrackingAuthorization()
//        self.setInitSocketIOConnection()
        //self.setVerifyPhoneNumber()
        
    }
    
//    func setInitSocketIOConnection() {
//        SocketHelperCare.share.initConnectionSocket()
//        SocketHelperTimer.share.initConnectionSocket()
        //SocketHelperFitness.share.initConnectionSocket()
//    }
    
//    func setVerifyPhoneNumber() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            if gUser?.mobileVerifiedAt == nil {
//                let controller = VerifyPhoneRouter.setupModule()
//                controller.modalPresentationStyle = .fullScreen
//                self.present(controller, animated: true, completion: nil)
//            }
//        }
//    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        let navigation = self.selectedViewController as? BaseNavigationController
        navigationController?.setNavigationBarHidden(false, animated: true)
        return navigation?.supportedInterfaceOrientations ?? .portrait
    }

    override var shouldAutorotate: Bool {
        return true
    }
    
    private func setShadowTabBar() {
        self.tabBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.tabBar.layer.shadowOpacity = 0.5
        self.tabBar.layer.shadowOffset = CGSize.zero
        self.tabBar.layer.shadowRadius = 5
        self.tabBar.layer.borderColor = UIColor.clear.cgColor
        self.tabBar.layer.borderWidth = 0
        self.tabBar.clipsToBounds = false
        self.tabBar.backgroundColor = UIColor.white
    }

    // MARK: Init
    private func setInitAddItemTabBarController() {
        self.tabBar.layer.borderColor = UIColor.white.cgColor
        self.tabBar.layer.borderWidth = 0.5
        
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = R.color.orangeFE8F47()
        UITabBar.appearance().unselectedItemTintColor = R.color.gray7A8598()
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barStyle = .default
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)], for: .selected)
        
        let verticalSize: CGFloat = -1 // -3.0
        
        // MARK: Page 1
        let controlController = ControlRouter.setupModule()

        controlController.tabBarItem.tag = 1
        controlController.tabBarItem.title  = "."
        controlController.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: verticalSize)
        controlController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        controlController.tabBarItem.image = R.image.ic_tab1_unselected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        controlController.tabBarItem.selectedImage = R.image.ic_tab1_selected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        let controlNavController = BaseNavigationController(rootViewController: controlController)
        controlNavController.setHiddenNavigationBarViewControllers([ControlViewController.self,
                                                                    KitchenViewViewController.self,
                                                                    TableRestaurantViewController.self,
                                                                    DetailTableRestaurantViewController.self])
        
        // MARK: Page 2
        let accountController = AccountRouter.setupModule()
        accountController.tabBarItem.tag = 2
        accountController.tabBarItem.title  = "."
        accountController.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: verticalSize)
        accountController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        accountController.tabBarItem.image = R.image.ic_tab2_unselected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        accountController.tabBarItem.selectedImage = R.image.ic_tab2_selected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        let accountNavController = BaseNavigationController(rootViewController: accountController)
        accountNavController.setHiddenNavigationBarViewControllers([AccountViewController.self])
        
        // MARK: Page 3
        let menuController = MenuRouter.setupModule()
        menuController.tabBarItem.tag = 3
        menuController.tabBarItem.title  = "."
        menuController.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: verticalSize)
        menuController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        menuController.tabBarItem.image = R.image.ic_tab3_unselected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        menuController.tabBarItem.selectedImage = R.image.ic_tab3_selected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        let menuNavController = BaseNavigationController(rootViewController: menuController)
        menuNavController.setHiddenNavigationBarViewControllers([MenuViewController.self,
                                                                 RestaurantUpdateViewController.self])
        
        // MARK: Page 4
        let saleController = SaleReportRouter.setupModule()
        saleController.tabBarItem.tag = 4
        saleController.tabBarItem.title  = "."
        saleController.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: verticalSize)
        saleController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        saleController.tabBarItem.image = R.image.ic_tab4_unselected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        saleController.tabBarItem.selectedImage = R.image.ic_tab4_selected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        let saleNavController = BaseNavigationController(rootViewController: saleController)
        saleNavController.setHiddenNavigationBarViewControllers([SaleReportViewController.self])
        
        // MARK: Page 5
        let SCMController = SCMRouter.setupModule()
        SCMController.tabBarItem.tag = 5
        SCMController.tabBarItem.title  = "."
        SCMController.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: verticalSize)
        SCMController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        SCMController.tabBarItem.image = R.image.ic_tab5_unselected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        SCMController.tabBarItem.selectedImage = R.image.ic_tab5_selected()?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        let SCMNavController = BaseNavigationController(rootViewController: SCMController)
        SCMNavController.setHiddenNavigationBarViewControllers([SCMViewController.self])
        
        // MARK:  Add Tabbar
        self.viewControllers = [
            controlNavController,
            accountNavController,
            menuNavController,
            saleNavController,
            SCMNavController
        ]
    }
    
//    func onLogoutAction() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//            self.onHandleUserLogout()
//        }
//    }
}

// MARK: NotificationCenter
//extension MainTabbarController {
//    func setInitNotificationCenter() {
//        NotificationCenter.default.addObserver(self, selector: #selector(self.onTokenExpire), name: .tokenExpire, object: nil)
//    }
//
//    @objc func onTokenExpire() {
//        guard KeyChainManager.shared.accessToken != nil else {
//            return
//        }
//        self.onLogoutAction()
//    }
//}

// MARK: App Tracking Transparency
//extension MainTabbarController {
//    func setInitATTrackingAuthorization () {
//        if #available(iOS 14, *) {
//            let trackingAuthorizationStatus = ATTrackingManager.trackingAuthorizationStatus
//            switch trackingAuthorizationStatus {
//            case .authorized:
//                // Tracking authorization dialog was shown
//                // and we are authorized
//                print("ATTrackingManager Authorized")
//
//                // Now that we are authorized we can get the IDFA
//                print("ATTrackingManager advertisingIdentifier IDFA: ", ASIdentifierManager.shared().advertisingIdentifier)
//
//            case .denied:
//                // Tracking authorization dialog was
//                // shown and permission is denied
//                print("ATTrackingManager Denied")
//                self.onSetTrackingAuthorization()
//
//            case .notDetermined:
//                // Tracking authorization dialog has not been shown
//                print("ATTrackingManager Not Determined")
//                self.onSetTrackingAuthorization()
//
//            case .restricted:
//                print("ATTrackingManager Restricted")
//
//            @unknown default:
//                print("ATTrackingManager Unknown")
//            }
//
//        } else {
//            // Fallback on earlier versions
//            print("ATTrackingManager Fallback on earlier versions")
//        }
//    }
//
//    func onSetTrackingAuthorization() {
//        if #available(iOS 14, *) {
//            ATTrackingManager.requestTrackingAuthorization { status in
//                switch status {
//                case .authorized:
//                    // Tracking authorization dialog was shown
//                    // and we are authorized
//                    print("ATTrackingManager Authorized")
//
//                    // Now that we are authorized we can get the IDFA
//                    print("ATTrackingManager advertisingIdentifier: ", ASIdentifierManager.shared().advertisingIdentifier)
//
//                case .denied:
//                    // Tracking authorization dialog was
//                    // shown and permission is denied
//                    print("ATTrackingManager Denied")
//
//                case .notDetermined:
//                    // Tracking authorization dialog has not been shown
//                    print("ATTrackingManager Not Determined")
//
//                case .restricted:
//                    print("ATTrackingManager Restricted")
//
//                @unknown default:
//                    print("ATTrackingManager Unknown")
//                }
//            }
//        } else {
//            // Fallback on earlier versions
//            print("ATTrackingManager Fallback on earlier versions")
//        }
//    }
//}
