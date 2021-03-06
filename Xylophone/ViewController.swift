//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
             playSound(soundName: sender.currentTitle!)
//        This line make the button have an oppacity of 0.5
        sender.alpha = 0.5
//        Code that run the action with 0.2 delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
    }
    
    
//    Function to play sound in swift
    
    func playSound(soundName:String) {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else
//        { return }
//
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode:.default)
//            try AVAudioSession.sharedInstance().setActive(true)
//
////            The following line is required for the player to work on iOS. Change the file type accordingly
//
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
//
//            guard let player = player else {
//                return
//            }
//
//            player.play()
//
//        }catch let error {
//            print(error.localizedDescription)
//        }
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }

}

