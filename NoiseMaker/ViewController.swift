//
//  ViewController.swift
//  NoiseMaker
//
//  Created by Marco Nie on 17/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let noiseMaker = NoiseMaker()
    
    @IBAction func playSound(_ sender: UIButton) {
        noiseMaker.play(index: sender.tag)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

