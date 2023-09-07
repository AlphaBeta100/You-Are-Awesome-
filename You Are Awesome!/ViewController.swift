//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Clarence Sternagle on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😎 ViewDidLoad has run!")
        messageLabel.text = "Fabulous? That's You"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😀 The message Button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
}

