//
//  ViewController.swift
//  Lab10-NavigationController
//
//  Created by Akshita Lathar on 3/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputFirstName: UITextField?
    @IBOutlet var inputMiddleName: UITextField?
    @IBOutlet var inputLastName: UITextField?
    @IBOutlet var inputAddressOne: UITextField?
    @IBOutlet var inputAddressTwo: UITextField?
    @IBOutlet var inputState: UITextField?
    @IBOutlet var inputCity: UITextField?
    @IBOutlet var inputZip: UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let displayNameViewController = segue.destination as? DisplayNameViewController
                
        else {
            return
        }
        displayNameViewController.displayName = (inputFirstName?.text)! + " " + (inputMiddleName?.text)! + " " + (inputLastName?.text)!
        displayNameViewController.displayAddressOne = (inputAddressOne?.text)!
        displayNameViewController.displayAddressTwo = (inputAddressTwo?.text)!
        displayNameViewController.displayArea = (inputCity?.text)! + " , " + (inputState?.text)! + " " + (inputZip?.text)!
        
    }
}

