//
//  ViewController.swift
//  BonsaiWork Demo
//
//  Created by Gamze on 29.03.2020.
//  Copyright © 2020 Gamze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let brain = Brain()
    
    var updTimer = Timer()
    var isTimerOn = false
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mainButtonPressed(_ sender: Any) {
                
        isTimerOn.toggle()
        mainButton.setTitle(brain.getTitleName(isTimerOn), for: .normal)
        brain.startTimer(isTimerOn)
        timerLabel.text = brain.countdownText
        
    }
    
}

