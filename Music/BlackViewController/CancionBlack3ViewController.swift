//
//  CancionBlack3ViewController.swift
//  Music
//
//  Created by Miguel Eduardo Garcia on 4/28/19.
//  Copyright © 2019 Miguel Eduardo Garcia. All rights reserved.
//

import UIKit
import AVFoundation

class CancionBlack3ViewController: UIViewController {

    var audio = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audio = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Iron Man", ofType: "mp3")!))
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
