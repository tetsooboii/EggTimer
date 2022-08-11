//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime = ["Soft":5,"Medium":7,"Hard":12]
    var secondsRemaining = 0
    var timer: Timer?
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer?.invalidate()
        secondsRemaining = eggTime[sender.currentTitle!]!*60
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                self.secondsRemaining -= 1
            } else {
                Timer.invalidate()
            }
        }
        
    }
}
