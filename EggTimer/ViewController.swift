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
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var totalTime: Float = 0
    var secondsPassed: Float = 0
    var player = AVAudioPlayer()
    
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    @IBAction func eggTypeSelected(_ sender: UIButton) {
        
        guard let hardness = sender.currentTitle else { return }
        
        totalTime = Float (eggTimes[hardness] ?? 0)
        
        timer.invalidate()
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        progressLabel.text = "progress"
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if secondsPassed < totalTime {
                secondsPassed += 1
                progressBar.progress = secondsPassed/totalTime
                progressLabel.text = "\(Int(secondsPassed/totalTime * 100))%"
            } else {
                Timer.invalidate()
                titleLabel.text = "Done!"
                playSound()
            }
        }
    }
}
