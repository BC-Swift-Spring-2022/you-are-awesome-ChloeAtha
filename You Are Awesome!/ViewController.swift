//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Chloe Atha on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        print("")
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!", "You are Great!", "You are Fantastic!", "Fabulous? That's You!", "When the Genius Bar Needs Help, They Call You!", "You've Got The Design Skills of Jony Ive"]
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in:0...totalNumberOfImages))")
        messageLabel.text = messages [messageNumber]
        messageNumber += 1
        if messageNumber == messages.count{
            messageNumber = 0
        }
    
        
        // let imageName = "image" + String(imageNumber)
        //let imageName = "image\(imageNumber)"
        //imageView.image = UIImage(named: imageName)
        //imageNumber = imageNumber + 1
        //if imageNumber == 10 {
           // imageNumber = 0
        //}
        
        
        
        //        let awesomeMessage = "You are Awesome!"
        //        let greatMessage = "You are Great!"
        //        let bombMessage = "You are Da Bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image3")
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //                messageLabel.text = awesomeMessage
        //                imageView.image = UIImage(named: "image0")
        //        }
    }
    
}

