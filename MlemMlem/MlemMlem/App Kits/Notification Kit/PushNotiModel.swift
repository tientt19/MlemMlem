//
//  PushNotiModel.swift
//  1SK
//
//  Created by Thaad on 07/01/2022.
//

import Foundation

class PushNotiModel: NSObject {
    var type: String?
    var url: String?
    var screen: ScreenEnum?
    var data: PushNotiDataModel?
    
    init(object: [String: Any]?) {
        super.init()
        self.type = object?["type"] as? String
        self.url = object?["url"] as? String
        
        if let screen = object?["screen"] as? String {
            switch screen {
            case ScreenEnum.appointment.rawValue:
                self.screen = .appointment
                
            case ScreenEnum.fitness.rawValue:
                self.screen = .fitness
                
            default:
                break
            }
        }
        
        if let data = object?["data"] as? [String: Any] {
            self.data = PushNotiDataModel.init(object: data)
        }
    }
}

class PushNotiDataModel: NSObject {
    var id: Int?
    
    init(object: [String: Any]?) {
        super.init()
        self.id = object?["id"] as? Int
    }
}

enum ScreenEnum: String {
    case appointment
    case fitness
}
