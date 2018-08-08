//
//  SwitchViewController.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 2..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

// 추가할 것: 맨 마지막 동영상 재생 전 화면, 앞에 입력받는거(성별, 생일 이상 입력만 / 키, 몸무게 -> 권장 칼로리 / 직업 -> 알람할 때 @@@@@@@
// 동영상 재생 시간 변수 설정 @@@@@@@
// 각 직업 당 얼만큼의 운동이 할당되는 지 @@@@@@
// 키보드 바깥 터치하면 들어가도록

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBAction func button1(_ sender: UIButton) {
        workArray.append(work1)
        button1.backgroundColor = UIColor.red
    }
    @IBAction func button2(_ sender: UIButton) {
        workArray.append(work2)
        button2.backgroundColor = UIColor.red
    }
    @IBAction func button3(_ sender: UIButton) {
        workArray.append(work3)
        button3.backgroundColor = UIColor.red
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
