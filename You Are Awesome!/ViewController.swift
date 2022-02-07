//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Chloe Atha on 1/24/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 9
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
        do {
            try audioPlayer = AVAudioPlayer(data: sound.data)
            audioPlayer.play()
        } catch {
            print("Error: \(error.localizedDescription) Could not AVAudioPlayer object")
        }
    } else {
        print("Error: Could not read data from file sound0")
        }
        
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperlimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperlimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Fantastic!",
                        "Fabulous? That's You!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "You've Got The Design Skills of Jony Ive"]
       
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperlimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperlimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperlimit: totalNumberOfSounds-1)
        playSound(name: "sound\(soundNumber)")
        }
    
        
    }
    


