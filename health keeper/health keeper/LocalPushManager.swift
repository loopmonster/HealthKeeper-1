//
//  LocalPushManager.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 8..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import Foundation
import UserNotifications

class LocalPushManager: NSObject {
    static var shared = LocalPushManager()
    let center = UNUserNotificationCenter.current()
    
    func requestAuthorization() {
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if error == nil {
                print("Permission Granted")
            }
        }
    }
    
    func sendLocalPush(in time: TimeInterval) {
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "스트레칭 시간이야!", arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: "스트레칭 가즈아~~", arguments: nil)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let request = UNNotificationRequest(identifier: "Timer", content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if error == nil {
                print("Schedule push succeed")
            }
        }
    }
}
