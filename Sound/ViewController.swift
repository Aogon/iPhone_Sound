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
    @IBOutlet var drumButton: UIButton!
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchDownDrumButton() {
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named:"drumImage"), for: .normal)
    }


}

