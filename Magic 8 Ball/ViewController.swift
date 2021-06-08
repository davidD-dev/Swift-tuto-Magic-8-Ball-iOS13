//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    
    @IBOutlet weak var ballImage: UIImageView!
    

    @IBOutlet weak var shakeResponse: UILabel!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        ballImage.image = ballArray.randomElement()
        shakeResponse.text = "It's cool to have pressed the button and not to have shaken me"
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            ballImage.image = ballArray.randomElement()
            shakeResponse.text = "Seriously there a button don't shake me"
        }
    }
    
}

