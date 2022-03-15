//
//  Scene2ViewController.swift
//  Lab08-MultipleScenes
//
//  Created by Akshita Lathar on 3/13/22.
//

import UIKit

class Scene2ViewController: UIViewController {
    @IBOutlet var textLabel: UILabel!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textLabel.text = name
    }

}
