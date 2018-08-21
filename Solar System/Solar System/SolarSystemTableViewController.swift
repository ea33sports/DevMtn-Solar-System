//
//  SolarSystemTableViewController.swift
//  Solar System
//
//  Created by Eric Andersen on 8/21/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import UIKit

class SolarSystemTableViewController: UITableViewController {
    
    var planets = PlanetController.planets

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 175.0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIImageView()
        let headerImage = UIImage(named: "solarSystem")
        headerView.image = headerImage
        
        return headerView
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        // Configure the cell...
        let planet = planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.imageName)

        return cell
    }
 
 
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toPlanetVC" {
            let destinationVC = segue.destination as? PlanetViewController
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let planet = planets[indexPath.row]
            destinationVC?.planet = planet
        }
    }
}


















































