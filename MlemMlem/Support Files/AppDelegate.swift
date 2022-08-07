//
//  AppDelegate.swift
//  MlemMlem
//
//  Created by Valerian on 06/08/2022.
//

import UIKit
import GoogleSignIn
import AVFAudio
import FirebaseRemoteConfig
import Firebase
import FirebaseCore
import FirebaseCrashlytics
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // [END appdelegate_interfaces]
    var window: UIWindow?
    var orientationLock = UIInterfaceOrientationMask.portrait
    
    // [START didfinishlaunching]
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        self.setInitConfigGoogleFirebase()
//        self.setInitUNUserNotificationCenter()
//        self.setInitNotificationOneSignal(launchOptions: launchOptions)
        self.setEnableSoundWhenModeSilent()
        self.setInitRootViewController()
        self.setInitReachabilityInternet()
        IQKeyboardManager.shared.toolbarDoneBarButtonItemText = "Done"
        return true
    }
    
    // MARK: ViewController
    func setInitRootViewController() {
        let iOSVersion = ProcessInfo().operatingSystemVersion.majorVersion
        if iOSVersion < 13 { // iOS version < 13.0.0
            // Facebook
            let frame = UIScreen.main.bounds
            let windowSize = CGSize(width: min(frame.width, frame.height), height: max(frame.width, frame.height))
            window = UIWindow(frame: CGRect(origin: .zero, size: windowSize))
            let rootController = SplashRouter.setupModule()
            window?.rootViewController = rootController
            window?.makeKeyAndVisible()
        }
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }
    
    // [START openurl]
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
    }
    // [END openurl]
    
    // MARK: UISceneSession Lifecycle
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    @available(iOS 13.0, *)
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    //MARK: - Foreground - Open App
    func applicationWillEnterForeground(_ application: UIApplication) {
        NotificationCenter.default.post(name: .applicationWillEnterForeground, object: nil)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        NotificationCenter.default.post(name: .applicationDidEnterBackground, object: nil)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
//        AppsFlyerLib.shared().start()
    }
}

// MARK: - IQKeyboard
extension AppDelegate {
    private func setInitConfigIQKeyboard() {
        // IQKeyboard manager
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.disabledDistanceHandlingClasses = []
        IQKeyboardManager.shared.disabledToolbarClasses = []
        IQKeyboardManager.shared.disabledTouchResignedClasses = []
    }
}

// MARK: - Firebase
extension AppDelegate {
    private func setInitConfigGoogleFirebase() {
        FirebaseApp.configure()
        Crashlytics.crashlytics().setCrashlyticsCollectionEnabled(true)
        
        RemoteConfigManager.shared.initRemoteConfig()
    }
    
    func setInitReachabilityInternet() {
        InternetConnection.shared.startNotifier()
    }
}

// MARK: - AppUtility Orientation
@available(iOS 13.0, *)
extension AppDelegate {
    struct AppUtility {
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                delegate.orientationLock = orientation
            }
        }
        
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation: UIInterfaceOrientation) {
            self.lockOrientation(orientation)
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
            UINavigationController.attemptRotationToDeviceOrientation()
        }
    }
}

// MARK: Mode Device Silent
extension AppDelegate {
    func setEnableSoundWhenModeSilent() {
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
    }
}

//MARK: OneSignal
//extension AppDelegate {
//    func setInitUNUserNotificationCenter() {
//        // Set RemoteNotifications
//        if #available(iOS 10.0, *) {
//            // iOS 10 or later
//            // For iOS 10 display notification (sent via APNS)
//            //UNUserNotificationCenter.current().delegate = self
//            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
//            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: {_, _ in })
//            UIApplication.shared.registerForRemoteNotifications()
//
//        } else {
//            // iOS 9 support - Given for reference. This demo app supports iOS 13 and above
//            UIApplication.shared.registerUserNotificationSettings(UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil))
//            UIApplication.shared.registerForRemoteNotifications()
//        }
//
//        //UIApplication.shared.applicationIconBadgeNumber = 0
//    }
//
//    func setInitNotificationOneSignal(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
//        let ONESIGNAL_ID = "98e0dab7-6c1f-4632-9862-8dfd6c67dee6"
//        if APP_ENV == .DEV {
//            // Remove this method to stop OneSignal Debugging
//            OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)
//        }
//
//        // OneSignal initialization
//        OneSignal.initWithLaunchOptions(launchOptions)
//        OneSignal.setAppId(ONESIGNAL_ID)
//
//        self.setOSNotificationOpenedBlock()
//
//        // promptForPushNotifications will show the native iOS notification permission prompt.
//        // We recommend removing the following code and instead using an In-App Message to prompt for notification permission (See step 8)
//        //OneSignal.promptForPushNotifications(userResponse: { accepted in
//        //print("<OneSignal> User accepted notifications: \(accepted)")
//        //})
//    }
//
//    func setOSNotificationOpenedBlock() {
//        let osNotificationOpenedBlock: OSNotificationOpenedBlock = { result in
//            let notification: OSNotification = result.notification
//
//            if let additionalData = notification.additionalData as? [String: Any] {
//                print("<OneSignal> additionalData: ", additionalData)
//                let object = PushNotiModel.init(object: additionalData)
//                gPushNotiModel = object
//                NotificationCenter.default.post(name: .applicationOSNotificationOpenedBlock, object: object)
//            }
//        }
//        OneSignal.setNotificationOpenedHandler(osNotificationOpenedBlock)
//    }
//}

// MARK: AppsFlyerLibDelegate
//extension AppDelegate: AppsFlyerLibDelegate {
//    func setInitAppsFlyer() {
//        AppsFlyerLib.shared().appsFlyerDevKey = "sj2MQGdMT7p2APwVEE9dBn" //"<AF_DEV_KEY>"
//        AppsFlyerLib.shared().appleAppID = "id1554801349" //"<APPLE_APP_ID>"
//        AppsFlyerLib.shared().delegate = self
//        AppsFlyerLib.shared().isDebug = false
//        AppsFlyerLib.shared().waitForATTUserAuthorization(timeoutInterval: 60)
//
//        // SceneDelegate support
//        NotificationCenter.default.addObserver(self, selector: #selector(self.onSendLaunch), name: UIApplication.didBecomeActiveNotification, object: nil)
//
//        AppsFlyerLib.shared().start(completionHandler: { (dictionary, error) in
//            if error != nil {
//                print("<AppsFlyer> completionHandler error:", error ?? "")
//                return
//            } else {
//                print("<AppsFlyer> completionHandler success:", dictionary ?? "")
//                return
//            }
//        })
//    }
//
//    // SceneDelegate support - start AppsFlyer SDK
//    @objc func onSendLaunch() {
//        AppsFlyerLib.shared().start()
//    }
//
//    // Handle Organic/Non-organic installation
//    func onConversionDataSuccess(_ installData: [AnyHashable: Any]) {
//        Log.println("<AppsFlyer> onConversionDataSuccess", installData)
//
//        if let status = installData["af_status"] as? String {
//            if status == "Non-organic" {
//                if let sourceID = installData["media_source"],
//                   let campaign = installData["campaign"] {
//                    Log.println("<AppsFlyer> onConversionDataSuccess: This is a Non-Organic install. Media source: \(sourceID)  Campaign: \(campaign)")
//                }
//            } else {
//                Log.println("<AppsFlyer> onConversionDataSuccess: This is an organic install.")
//            }
//
//            if let is_first_launch = installData["is_first_launch"] as? Bool,
//               is_first_launch {
//                Log.println("<AppsFlyer> onConversionDataSuccess: First Launch")
//
//            } else {
//                Log.println("<AppsFlyer> onConversionDataSuccess: Not First Launch")
//            }
//        }
//
//        // Get conversion data
//        guard let first_launch_flag = installData["is_first_launch"] as? Int else {
//            Log.println("<AppsFlyer> onConversionDataSuccess: first_launch_flag: nil")
//            return
//        }
//
//        guard let status = installData["af_status"] as? String else {
//            Log.println("<AppsFlyer> onConversionDataSuccess: status: nil")
//            return
//        }
//
//        if first_launch_flag == 1 {
//            if status == "Non-organic" {
//                if let media_source = installData["media_source"], let campaign = installData["campaign"] {
//                    Log.println("<AppsFlyer> This is a Non-Organic install. Media source: \(media_source) Campaign: \(campaign)")
//                }
//            } else {
//                Log.println("<AppsFlyer> This is an organic install.")
//            }
//        } else {
//            Log.println("<AppsFlyer> Not First Launch")
//        }
//    }
//
//    func onConversionDataFail(_ error: Error) {
//        Log.println("<AppsFlyer> onConversionDataFail:", error.localizedDescription)
//    }
//
//    //Handle Deep Link
//    func onAppOpenAttribution(_ attributionData: [AnyHashable: Any]) {
//        //Handle Deep Link Data
//        Log.println("<AppsFlyer> onAppOpenAttribution data:", attributionData)
//    }
//
//    func onAppOpenAttributionFailure(_ error: Error) {
//        Log.println("<AppsFlyer> onAppOpenAttributionFailure: ", error.localizedDescription)
//    }
//}

