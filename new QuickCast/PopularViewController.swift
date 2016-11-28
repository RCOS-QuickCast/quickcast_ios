//
//  PopularViewController.swift
//  new QuickCast
//
//  Created by Ethan Geng on 21/10/2016.
//  Copyright © 2016 Ethan. All rights reserved.
//

import UIKit

class PopularViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return Match.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MatchTableViewCell
        
        cell.TeamImageView1.image = UIImage(named: "Dota2")
        cell.TeamImageView2.image = UIImage(named: "Dota2")
        // Configure the cell...
        cell.TeamName1.text = TeamNames1[indexPath.row]
        cell.TeamName2.text = TeamNames2[indexPath.row]
        
        return cell
    }
    
    var Match = ["match 1", "match 2", "match 3", "match 4", "match 5", "match 6", "match 7", "match 8", "match 9", "match 10"]
    var TeamNames1 = ["Team 1", "Team 3", "Team 5", "Team 7", "Team 9", "Team 11", "Team 13", "Team 15", "Team 17", "Team 19"]
    var TeamNames2 = ["Team 2", "Team 4", "Team 6", "Team 8", "Team 10", "Team 12", "Team 14", "Team 16", "Team 18", "Team 20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }         // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
