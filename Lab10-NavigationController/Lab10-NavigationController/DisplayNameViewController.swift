//
//  DisplayNameViewController.swift
//  Lab10-NavigationController
//
//  Created by Akshita Lathar on 3/28/22.
//

import UIKit

class DisplayNameViewController: UIViewController {

    var displayName: String = ""
    var displayAddressOne: String = ""
    var displayAddressTwo: String = ""
    var displayArea: String = ""
    @IBOutlet var displayNameLabel: UILabel?
    @IBOutlet var displayAddressOneLabel: UILabel?
    @IBOutlet var displayAddressTwoLabel: UILabel?
    @IBOutlet var displayAreaLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        displayNameLabel?.text = displayName
        displayAddressOneLabel?.text = displayAddressOne
        displayAddressTwoLabel?.text = displayAddressTwo
        displayAreaLabel?.text = displayArea
    }

}
