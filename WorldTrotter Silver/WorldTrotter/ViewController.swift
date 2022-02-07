//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Akshita Lathar on 2/1/22.
//

import UIKit

class ViewController: UIViewController {
    let gradLayer = CAGradientLayer()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            gradLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
            view.layer.insertSublayer(gradLayer, at: 0)
            gradLayer.frame = view.bounds
            
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            gradLayer.frame = view.bounds
        }

}

