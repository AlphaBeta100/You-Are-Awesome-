//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Clarence Sternagle on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var imageNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     //   print("😎 ViewDidLoad has run!")
     //   messageLabel.text = "Fabulous? That's You"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        print(imageNumber)
        
    //  the next two lines concatenate a Int to a string
    //  let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        var messageArray = ["You Are Awesome!",
                            "You Make Me Happy!",
                            "You Are The Best!",
                            "You Are Great!",
                            "You Never Make Me Sad!"]
        
    // Removed one messageArray element without changing rest of code
        var removeMessage = messageArray.remove(at: 4)
        messageLabel.text = messageArray[imageNumber]
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
     //   if imageNumber == 5 {
        if imageNumber == messageArray.count {
            imageNumber = 0
        }
        
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
    }
    
}

