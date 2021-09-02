//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//   3 constans method
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    

    @IBAction func EggTypeSelected(_ sender: UIButton) {
        
        guard let hardness = sender.currentTitle else { return }
        
        guard var secondsRemaining = eggTimes[hardness] else { return }
        
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if secondsRemaining > 0 {
                    print ("\(secondsRemaining) seconds")
                    secondsRemaining -= 1
                } else {
                    Timer.invalidate()
                }
            }
                    
        
//  swith-case method
//        switch hardness {
//
//        case "Soft": print ("\(softTime) minutes")
//        case "Medium": print ("\(mediumTime) minutes")
//        case "Hard": print ("\(hardTime) minutes")
//        default: break
//        }
        
// if-else method
//        if hardness == "Soft" {
//            print ("\(softTime) minutes")
//        } else if hardness == "Medium" {
//            print ("\(mediumTime) minutes")
//        } else {
//            print ("\(hardTime) minutes")
//        }
        
    }
    
    
}
