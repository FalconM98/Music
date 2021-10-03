//
//  CancionACDC2ViewController.swift
//  Music
//
//  Created by Miguel Eduardo Garcia on 4/28/19.
//  Copyright © 2019 Miguel Eduardo Garcia. All rights reserved.
//

import UIKit
import AVFoundation

class CancionACDC2ViewController: UIViewController {
    
    var audio = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audio = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "TNT", ofType: "mp3")!))
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

        // Do any additional setup after loading the view.
}


/*
 
 (Oi, oi, oi, oi, oi, oi, oi, oi, oi, oi, oi, oi, oi, oi, oi)
 
 See me ride out of the sunset
 On your colour TV screen
 Out for all that I can get
 If you know what I mean
 Women to the left of me
 And women to the right
 Ain't got no gun
 Ain't got no knife
 Don't you start no fight
 
 'Cause I'm T.N.T., I'm dynamite
 (T.N.T.) and I'll win the fight
 (T.N.T.) I'm a power load
 (T.N.T.) watch me explode
 
 I'm dirty, mean, and mighty unclean
 I'm a wanted man
 Public enemy number one
 Understand?
 So lock up your daughter
 Lock up your wife
 Lock up your back door
 And run for your life
 The man is back in town
 So don't you mess me 'round
 
 'Cause I'm T.N.T. I'm dynamite
 (T.N.T.) and I'll win the fight
 (T.N.T.) I'm a power load
 (T.N.T.) watch me explode
 
 T.N.T., (oi, oi, oi)
 T.N.T., (oi, oi, oi)
 T.N.T., (oi, oi, oi)
 T.N.T., (oi, oi, oi)
 
 T.N.T., (oi, oi, oi), I'm dynamite
 (T.N.T., oi, oi, oi), and I'll win the fight
 (T.N.T., oi, oi, oi), I'm a power load
 (T.N.T.), watch me explode! */
