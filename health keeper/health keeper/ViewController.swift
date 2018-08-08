//
//  ViewController.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 2..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var demoTableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        demoTableView.estimatedRowHeight = 123
        demoTableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : DynamicTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "DynamicTableViewCell") as? DynamicTableViewCell
        
        if cell == nil {
            
            cell = Bundle.main.loadNibNamed("DynamicTableViewCell", owner: self, options: nil)?.first as? DynamicTableViewCell
        }
        
        let item = workArray[indexPath.row]
        cell?.nameLabel.text = item.workName
        cell?.descriptionLabel.text = item.workDescription
        cell?.workImage.image = UIImage(named: item.workImageName)
    
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        let item1 = workArray[indexPath.row]
        vc?.detailName = item1.workName
        vc?.detailDescription = item1.workDescription
        vc?.detailVideo = item1.workVideoLink
        self.navigationController?.pushViewController(vc!, animated: true)

        
    }
    
    //한번에 구조체로 만들어서 그 다음 페이지로 정보를 보내버리기!
    
    
}

