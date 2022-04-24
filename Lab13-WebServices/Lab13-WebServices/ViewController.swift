//
//  ViewController.swift
//  Lab13-WebServices
//
//  Created by Akshita Lathar on 4/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://api.flickr.com/services/rest/?method=flickr.interestingness.getList&api_key=a6d819499131071f158fd740860a5a88&extras=url_z,date_taken&format=json&nojsoncallback=1")!
        
        let photos: [Photo]
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: {
            (data, response, error) in
            if let jsonData = data {
                if let jsonString = String(data: jsonData, encoding: .utf8){
                    print(jsonString)
                }
                
            } else if let requestError = error {
                print("Error fetching interesting photos: \(requestError)")
            } else {
                print("Unexpected error with the request")
            }
        })
        task.resume()
        
    }


}

class Photo: Codable {
    let title: String
    let remoteURL: URL
    let photoID: String
    let dataTaken: Data
    
}
