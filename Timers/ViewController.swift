//
//  ViewController.swift
//  Timers
//
//  Created by Atil Samancioglu on 17/06/2017.
//  Copyright © 2017 Atil Samancioglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction() {
        
        timeLabel.text = String(counter)
        counter = counter - 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's Off"
        }
        
    }

    


}

