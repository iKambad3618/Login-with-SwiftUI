//
//  Constants.swift
//  PMS
//
//  Created by iMac on 19/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import Foundation
import UIKit

//MARK: GENERAL
let APP_NAME = "PMS"

var currentAudioMessageKey = ""
var freeMembershipMessage: String?
var shouldShowReportOptions = true

// MARK: DEVICE & SCREEN SIZE CONSTANTS
let IS_IPHONE4  = abs(UIScreen.main.bounds.size.height - 480) < 1
let IS_IPHONE5  = abs(UIScreen.main.bounds.size.height - 568) < 1
let IS_IPHONE6  = abs(UIScreen.main.bounds.size.height - 667) < 1
let IS_IPHONE6P = abs(UIScreen.main.bounds.size.height - 736) < 1

var isPanelOpen = false
var isSessionExpiredAlertShown = false
var isNoInternetAlertShown = false

// MARK: DEVICE & SCREEN SIZE CONSTANTS
let SCREEN_WIDTH  = (UIScreen.main.bounds.size.width)
let SCREEN_HEIGHT  = (UIScreen.main.bounds.size.height)

//MARK: MESSAGES
struct Message {
    static let AppName = APP_NAME
    static let AllFields = "Please fill all fields"
    static let validEmail = "Please enter proper email address"
    static let moveAhead = "Your all validation are perfect, Go ahead!"
}
//MARK: MESSAGES
struct ButtonTitles {
    static let Ok = "OK"
    static let Cancel = "Cancel"
}

