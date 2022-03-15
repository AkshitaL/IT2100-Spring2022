//
//  ViewController.swift
//  Lab08-MultipleScenes
//
//  Created by Akshita Lathar on 3/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // If the triggered segue is the "showItem" segue
        switch segue.identifier {
        case "toScene2":
            // Figure out which row was just tapped
            if let row = textInput.text {
               
                let detailViewController = segue.destination as! Scene2ViewController
                detailViewController.name = "Hello, " + row
    } default:
            preconditionFailure("Unexpected segue identifier.")
        }
    }


}

