//
//  ViewController.swift
//  Lab7-TableView
//
//  Created by Akshita Lathar on 3/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    var activities: [String] = []
    var activitiesNotes: [String] = []
    var activitiesCosts: [Double] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        addActivity(activity: "Hiking", note: "Breath some fresh air", cost: 0.0)
        addActivity(activity: "Biking", note: "Need for speed", cost: 0.0)
        addActivity(activity: "Go to a movie", note: "movies", cost: 10.0)
        
    }
    
    func addActivity(activity: String, note: String, cost: Double) {
        self.activities.append(activity)
        self.activitiesNotes.append(note)
        self.activitiesCosts.append(cost)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "activitiesCell") as! ActivityTableViewCell
        cell.activity.text = self.activities[indexPath.item]
        cell.activityNote.text = self.activitiesNotes[indexPath.item]
        cell.activityCost.text = String(format: "$%.02f", self.activitiesCosts[indexPath.item])
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

}

