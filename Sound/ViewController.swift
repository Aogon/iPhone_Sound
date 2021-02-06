//
//  ViewController.swift
//  Sound
//
//  Created by Sakai Aoi on 2021/02/06.
//  Copyright © 2021 Sakai Aoi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapDrumButton() {
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }


}

