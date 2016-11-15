//
//  ViewController.swift
//  new QuickCast
//
//  Created by Ethan Geng on 21/10/2016.
//  Copyright © 2016 Ethan. All rights reserved.
//

import UIKit

class TryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return Match.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MatchTableViewCell
        
        // Configure the cell...
        cell.TeamName1.text = TeamNames1[indexPath.row]
        cell.TeamName2.text = TeamNames2[indexPath.row]
        
        return cell
    }
    
    var Match = ["match 1", "match 2", "match 3", "match 4", "match 5"]
    var TeamNames1 = ["Team 1", "Team 3", "Team 5", "Team 7", "Team 9"]
    var TeamNames2 = ["Team 2", "Team 4", "Team 6", "Team 8", "Team 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

