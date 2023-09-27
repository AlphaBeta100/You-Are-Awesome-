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
    
    var imageNumber: Int = -1
    var messageNumber: Int = -1
    let totalNumberOfImages = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     //   print("😎 ViewDidLoad has run!")
     //   messageLabel.text = "Fabulous? That's You"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messageArray = ["You Are Awesome!",
                            "You Are Great",
                            "You Are Fantastic!",
                            "When the Genius Bar Needs Help, They Call You!",
                            "Fabulous? That's You!",
                            "You've got The Design Skills of Jony Ive",]
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messageArray.count - 1)
            
        } while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text =  messageArray[messageNumber]

        
       
        
        var newImageNumber: Int
        repeat {
            
           // print("Could put a print statement here")
            
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
            
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
    }
    
}

