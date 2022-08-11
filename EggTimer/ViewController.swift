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
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
//        print(sender.currentTitle)
        let hardness = sender.currentTitle!
        
//        print(eggTime[hardness]!)
        var inSec = eggTime[hardness]!*60
        
        while inSec > 0 {
            print(inSec)
            inSec-=1
        }
    }
}
  
