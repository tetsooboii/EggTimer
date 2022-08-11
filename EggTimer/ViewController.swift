//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var LabelText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer!
    
    let eggTime = ["Soft":5,"Medium":7,"Hard":12]
    var secondsRemaining = 0
    var timer: Timer?
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer?.invalidate()
        progressBar.progress = 0
        secondsRemaining = eggTime[sender.currentTitle!]!*60  //convert into seconds here
        let step = 1.0/Float(secondsRemaining)
//        print("step",step)
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                //                print ("\(self.secondsRemaining) seconds")
                self.progressBar.progress += step
                self.secondsRemaining -= 1
            } else {
                Timer.invalidate()
                self.LabelText.text = "Done!"
                self.playSound()
            }
        }
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
