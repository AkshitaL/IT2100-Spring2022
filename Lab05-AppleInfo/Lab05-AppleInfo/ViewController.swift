//
//  ViewController.swift
//  Lab05-AppleInfo
//
//  Created by Akshita Lathar on 2/15/22.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    
    @IBOutlet var webApple: WKWebView!
    @IBOutlet var appleLink: UISegmentedControl!
    @IBAction func changeAppleLink(_ sender: Any) {
        var appleURLString = ""
        switch appleLink.selectedSegmentIndex {
        case 0:
            appleURLString = "https://en.wikipedia.org/wiki/Apple_Inc"
        case 1:
            appleURLString = "https://en.wikipedia.org/wiki/IOS"
        case 2:
            appleURLString = "https://en.wikipedia.org/wiki/Xcode"
        case 3:
            appleURLString = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
        default:
            appleURLString = "https://en.wikipedia.org/wiki/Apple_Inc"
        }
        let myURL = URL(string: appleURLString)
        let myRequest = URLRequest(url:myURL!)
        webApple.load(myRequest)
    }
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        let myURL = URL(string: "https://en.wikipedia.org/wiki/Apple_Inc")
        let myRequest = URLRequest(url: myURL!)
        webApple.load(myRequest)
    }
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }


}

