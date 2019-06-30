//
//  ViewController.swift
//  Dicee
//
//  Created by Kristof Dewilde on 01/02/2018.
//  Copyright © 2018 Kristof Dewilde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeDiceFaces()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceFaces()
    }
    
    func changeDiceFaces(){
        diceImageView1.image = generateRandomDiceImage()
        diceImageView2.image = generateRandomDiceImage()
    }
    
    func generateRandomDiceImage() -> UIImage{
        let random = Int(arc4random_uniform(6) + 1)
        return UIImage(named: "dice\(random)")!
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceFaces()
    }
    
}

