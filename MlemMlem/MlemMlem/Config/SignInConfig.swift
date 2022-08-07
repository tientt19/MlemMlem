//
//  SignInConfig.swift
//  myElcom
//
//  Created by Valerian on 13/05/2022.
//

import Foundation
import GoogleSignIn


let signInConfig = GIDConfiguration.init(clientID: "456213960307-fj0geurrliikq1opp9stgekbkm72f3l7.apps.googleusercontent.com")

let APP_ENV = Environment.DEV
var AUTH_SERVICE_URL = "http://api-dev.elcom.com.vn/api"
var NEWFEED_SERVICEE_URL = "http://api-dev.elcom.com.vn/api"
var BASE_URL = "http://api-dev.elcom.com.vn/api"
var FITNESS_SERVICE_URL = ""
var SOCKET_TIMER_URL = ""

enum Environment {
    case DEV
    case PRO
}
