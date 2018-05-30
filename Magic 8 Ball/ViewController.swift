//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Brandon Luong on 4/20/18.
//  Copyright © 2018 Brandon Luong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let eightBallArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomShake : Int = 0;
    @IBAction func shakeMe(_ sender: Any) {
        shake()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //starts app with a random shake
        shake()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //sets random value to randomShake and displays image corresponding to it
    func shake(){
        randomShake = Int(arc4random_uniform(5))
        eightBall.image = UIImage(named: eightBallArray[randomShake])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        shake()
    }

    @IBOutlet weak var eightBall: UIImageView!
    
}

