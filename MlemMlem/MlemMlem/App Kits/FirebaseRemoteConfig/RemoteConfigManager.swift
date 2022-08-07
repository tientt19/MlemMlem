//
//  RemoteConfigManager.swift
//  myElcom
//
//  Created by Tiến Trần on 02/08/2022.
//

import Foundation
import FirebaseRemoteConfig

// MARK: Enum RemoteConfigKey
enum RemoteConfigKey: String {
    case features = "released_features"
}

// MARK: Init RemoteConfig
struct RemoteConfigManager {
    static let shared = RemoteConfigManager()
    
    fileprivate var remoteConfig: RemoteConfig

    fileprivate init() {
        self.remoteConfig = RemoteConfig.remoteConfig()
    }
    
    func initRemoteConfig() {
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        self.remoteConfig.configSettings = settings
    }
    
    func fetchRemoteConfig(completion: @escaping(_ success: Bool, _ error: Error?) -> Void) {
        print("RemoteConfig fetchRemoteConfig 1")
        
        self.remoteConfig.fetch { (status, error) -> Void in
            print("RemoteConfig fetchRemoteConfig 2")
            
            if status == .success {
                self.remoteConfig.activate { changed, error in
                    guard error == nil else {
                        completion(false, error)
                        return
                    }
                    
                    self.setConfigFeature()
                    
                    completion(true, nil)
                }
                
            } else {
                completion(false, error)
            }
        }
    }
}

// MARK: Get Value
extension RemoteConfigManager {
    private func getValueString(fromKey key: RemoteConfigKey) -> String? {
        return self.remoteConfig.configValue(forKey: key.rawValue).stringValue
    }

    private func getValueInt(fromKey key: RemoteConfigKey) -> Int? {
        return self.remoteConfig.configValue(forKey: key.rawValue).numberValue.intValue
    }

    private func getValueBool(fromKey key: RemoteConfigKey) -> Bool? {
        return self.remoteConfig.configValue(forKey: key.rawValue).boolValue
    }
    
    private func getValueJson(fromKey key: RemoteConfigKey) -> [String: Any]? {
        return self.remoteConfig.configValue(forKey: key.rawValue).jsonValue as? [String: Any]
    }
}

extension RemoteConfigManager {
    func setConfigFeature() {
        if let feature = RemoteConfigManager.shared.getValueJson(fromKey: .features) {
//            gFeature.openWholeFeatures = feature["openWholeFeatures"] as? Bool
        }
    }
}

//MARK: - Feature
class Feature: NSObject {
    var openWholeFeatures: Bool?
}
