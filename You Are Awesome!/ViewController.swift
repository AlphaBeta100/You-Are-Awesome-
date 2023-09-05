//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Clarence Sternagle on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😎 ViewDidLoad has run!")
        myMessage.text = "Fabulous? That's You"
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        print("😀 The message Button was pressed!")
        myMessage.text = "You Are Awesome!"
    }
    
}

