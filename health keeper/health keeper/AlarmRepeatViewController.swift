//
//  AlarmRepeatViewController.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 8..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import UIKit

class AlarmRepeatViewController: UIViewController {

    @IBOutlet weak var PeriodField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LocalPushManager.shared.requestAuthorization()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @IBAction func alarmAutoSetting(_ sender: UIButton) {
        print("You have entered \(alarmPeriod) seconds")

        a = 1
        for i in 0..<10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { // change 2 to desired
                LocalPushManager.shared.sendLocalPush(in: TimeInterval(alarmPeriod))
            }

        }
        //  }
        //}
    }
    @IBAction func alarmSetting(_ sender: UIButton) {
        print("You have entered \(PeriodField.text) minutes")
        a = 1
        guard let text = (PeriodField.text) else { return }
        guard let time = TimeInterval(text) else { return }
        //if a == b {
          //  for i in 0..<10 {
            //    LocalPushManager.shared.sendLocalPush(in: time)
            //    DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
                    LocalPushManager.shared.sendLocalPush(in: time)
            //    }
          //  }
        //}
    }
    


}
