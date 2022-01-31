//
//  ViewController.swift
//  Lab01-AJoke
//
//  Created by Akshita Lathar on 1/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var jokeLabel: UILabel!
    @IBOutlet var punchLineLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showJoke(_ sender: UIButton) {
        jokeLabel.text = "The first byte asked the second byte, \"are you feeling sick?\""
    }

    @IBAction func showPunchLine(_ sender: UIButton) {
        punchLineLabel.text = "No, I'm just feeling a bit off."
    }
}

