//
//  JobViewController.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 5..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import UIKit

class JobViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    
    @IBOutlet weak var jobButton: UIButton!
    @IBOutlet weak var jobPickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return jobs.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return jobs[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedJob = jobs[row]
    }
    
    @IBAction func jobAction(_ sender: UIButton) {
        if selectedJob == "중학생" {
            alarmPeriod = 5
        }
        else if selectedJob == "고등학생" {
            alarmPeriod = 1200
        }
        else if selectedJob == "대학생" {
            alarmPeriod = 1200
        }
        else {
            alarmPeriod = 1800
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
