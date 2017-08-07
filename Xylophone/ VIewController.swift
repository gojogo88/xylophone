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
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: soundArray[sender.tag - 1])
    }

    func playSound(soundFileName: String) {
        
        // sets the location or path, make sure to add it to your project!
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
        catch {
            
            print(error)
        }
        
        audioPlayer.play()
    }
}

/*
1. import AVFoundation
2. add AVAudioPlayerDelegate in the class
3. Declare a new variable for the player
4. Create a soundURL that contains our sound file inside notePressed func.
5. Initialize or set up the audioplayer with the sound file (imagine putting a disc inside the cd player)
*/
