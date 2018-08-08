//
//  DetailViewController.swift
//  hihi5
//
//  Created by wanseoncho on 2018. 8. 4..
//  Copyright © 2018년 wanseoncho. All rights reserved.
//

import UIKit
import AVKit

class DetailViewController: UIViewController {

    @IBOutlet weak var dtName: UILabel!
    @IBOutlet weak var dtDescription: UILabel!
    
    var detailName: String = ""
    var detailDescription: String = ""
    var detailVideo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dtName.text = detailName
        dtDescription.text = detailDescription
    }

    @IBAction func videoAction(_ sender: Any) {
        if let path = Bundle.main.path(forResource: detailVideo, ofType: "mp4") {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
