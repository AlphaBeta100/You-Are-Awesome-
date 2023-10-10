//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Clarence Sternagle on 8/28/23.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var playSoundSwitch: UISwitch!
    var imageNumber: Int = -1
    var messageNumber: Int = -1
    var soundNumber: Int = -1
    let totalNumberOfImages = 4
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //   print("😎 ViewDidLoad has run!")
        //   messageLabel.text = "Fabulous? That's You"
    }
        
        @IBAction func messageButtonPressed(_ sender: UIButton) {
            
            func playSound(name: String) {
                if let sound = NSDataAsset(name: name) {
                    do {
                        try   audioPlayer = AVAudioPlayer(data: sound.data)
                        audioPlayer.play()
                    } catch {
                        print("🥲 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
                    }
                    
                } else {
                    print("🥲 ERROR: Could not read data from file sounds.")
                }
                
            }

            func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
                var newNumber: Int
                repeat {
                    newNumber = Int.random(in: 0...upperLimit)
                    
                } while originalNumber == newNumber
                return newNumber
            }
            
            let messageArray = ["You Are Awesome!",
                                "You Are Great",
                                "You Are Fantastic!",
                                "When the Genius Bar Needs Help, They Call You!",
                                "Fabulous? That's You!",
                                "You've got The Design Skills of Jony Ive",]
            
            messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messageArray.count - 1)
            
            messageLabel.text =  messageArray[messageNumber]
            
    imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages - 1)
            imageView.image = UIImage(named: "image\(imageNumber)")

    soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds - 1)
            
            
 /*           var newImageNumber: Int
            repeat {
                // print("Could put a print statement here")
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
            } while imageNumber == newImageNumber
            imageNumber = newImageNumber
            imageView.image = UIImage(named: "image\(imageNumber)")
  
            
            var newSoundNumber: Int
            repeat {
                // print("Could put a print statement here")
            newSoundNumber = Int.random(in: 0...totalNumberOfSounds - 1)
            } while soundNumber == newSoundNumber
            soundNumber = newSoundNumber
            print("*** The new Sound Number is \(soundNumber)")
*/
            if playSoundSwitch.isOn { // if playSoundSwich is on
                playSound(name: "sound\(soundNumber)") // then play the sound
            }
            
            
        }
        
    @IBAction func PlaySoundToggle(_ sender: UISwitch) {
        // if the .isOn is not true && the audioplayer is not nil
        if !sender.isOn && audioPlayer != nil {
                audioPlayer.stop()  // stop playing audioPlayer
        }
    }
}
    

