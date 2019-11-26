//
//  ViewController.swift
//  Dice App
//
//  Created by Asif Rabbi on 26/10/19.
//  Copyright © 2019 Asif Rabbi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var imageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomImage1: Int = 0
    var randomImage2: Int = 0
    var textLabel : String = ("You got a lucky charm")
    
    @IBOutlet weak var diceLogo_1: UIImageView!
    @IBOutlet weak var diceLogo_2: UIImageView!
    
    @IBOutlet weak var textView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //diceLogo()
    }
    @IBAction func rollButton(_ sender: UIButton) {
       diceLogo()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceLogo()
    }
    
    func diceLogo() {
        randomImage1 = Int.random(in: 0 ... 5)
        randomImage2 = Int.random(in: 0 ... 5)
        diceLogo_1.image = UIImage.init(named: imageArray[randomImage1])
        diceLogo_2.image = UIImage.init(named: imageArray[randomImage2])
        
        if diceLogo_1.image == diceLogo_2.image{
            textView.text = textLabel
        }else{
            textView.text = ""
        }
    }

}

