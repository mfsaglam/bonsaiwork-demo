//
//  File.swift
//  BonsaiWork Demo
//
//  Created by Gamze on 29.03.2020.
//  Copyright © 2020 Gamze. All rights reserved.
//

import UIKit

class Brain {
    
    var timer = Timer()
    var timeLeft = 25
    var countdownText = "25"
    
    func getTitleName(_ shouldSayStop: Bool) -> String {
     
        if shouldSayStop {
            return "Stop"
        } else {
            return "Start"
        }
        
    }
    
    func startTimer(_ shouldStartTimer: Bool) {
        
        if shouldStartTimer {
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
            
        } else {
            
            timer.invalidate()
            timeLeft = 25
            
        }
        
    }
    
    @objc func onTimerFires() {
        
        timeLeft -= 1
        countdownText = "\(timeLeft)"
        
        if timeLeft <= 0 {
            timer.invalidate()
            
        }
        
    }
        
}
