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
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]

    @IBAction func EggTypeSelected(_ sender: UIButton) {
        
        guard let hardness = sender.currentTitle else { return }
        
        guard let result = eggTimes[hardness] else { return }
        
        
        print (result)
        
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
