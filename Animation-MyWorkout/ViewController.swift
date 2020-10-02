//
//  ViewController.swift
//  Animation-MyWorkout
//
//  Created by NextUser on 10/1/20.
//  Copyright © 2020 Swift&Xcode. All rights reserved.
//


import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttonBackground: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonBackground.layer.cornerRadius = 35
        buttonBackground.clipsToBounds = true
        buttonBackground.alpha = 0.0
    }
    
    
    @IBAction func touchedDown(_ sender: UIButton) {
        
        AudioServicesPlaySystemSound(SystemSoundID(1021))
        
        UIView.animate(withDuration: 0.35) {
            self.buttonBackground.alpha = 0.5
            self.buttonBackground.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            sender.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }
    }

    
    
    @IBAction func touchedUpInSide(_ sender: UIButton) {

        UIView.animate(withDuration: 0.35, animations: {
            self.buttonBackground.alpha = 0.0
            self.buttonBackground.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            sender.transform = CGAffineTransform.identity
        }) { (_) in
            self.buttonBackground.transform = CGAffineTransform.identity
        }
    }
}

