//
//  TableViewController.swift
//  BoxBet
//
//  Created by Isaac Perry on 2/5/17.
//  Copyright © 2017 Isaac Perry. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var boxesTextField: UILabel!
}


class PlayersTableViewController : UITableViewController {
    
    var players = [Player]()
    
    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? AddPlayerViewController {
            var player = Player()
            player.name = (sourceViewController.nameTextField?.text)!
            if let boxes = Int((sourceViewController.boxesTextField?.text)!) {
                player.tickets = boxes
            }
            players.append(player)
        }
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}



extension PlayersTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath) as! PlayersTableViewCell

        let player = players[indexPath.row]
        cell.nameTextField?.text = player.name
        cell.boxesTextField?.text = "\(player.tickets)"
        return cell
    }

}
