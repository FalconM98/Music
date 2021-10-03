//
//  VanHalen5ViewController.swift
//  Music
//
//  Created by Miguel Eduardo Garcia on 4/28/19.
//  Copyright © 2019 Miguel Eduardo Garcia. All rights reserved.
//

import UIKit
import AVFoundation

class VanHalen5ViewController: UIViewController {

    var audio = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audio = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "You Really Got Me", ofType: "mp3")!))
            audio.prepareToPlay()
        } catch  {
            print(error)
        }
    }
    
    @IBAction func play(_ sender: Any) {
        audio.play()
    }
    
    
    @IBAction func stop(_ sender: Any) {
        audio.stop()
    }
    
}
