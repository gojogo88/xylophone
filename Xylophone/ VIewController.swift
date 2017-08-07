//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        // sets the location or path, make sure to add it to your project!
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        do {
         
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
    }

}

/*
1. import AVFoundation
2. add AVAudioPlayerDelegate in the class
3. Declare a new variable for the player
4. Create a soundURL that contains our sound file.
5. 
 
*/
