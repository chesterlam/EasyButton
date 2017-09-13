//
//  ViewController.swift
//  EasyButton
//
//  Created by Chester Lam on 8/26/16.
//  Copyright © 2016 Chester Lam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var EasySound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("That Was Easy Button Sound - free-mp3-streaming.xyz", ofType: "mp3")!)
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        audioPlayer = try! AVAudioPlayer(contentsOfURL: EasySound)
        audioPlayer.prepareToPlay()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func easyButtonPressed(sender: UIButton) {
        //audioPlayer.currentTime = 0
        audioPlayer.play()
    }
}

