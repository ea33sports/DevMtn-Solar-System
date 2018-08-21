//
//  PlanetViewController.swift
//  Solar System
//
//  Created by Eric Andersen on 8/21/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import UIKit

class PlanetViewController: UIViewController {

    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var myFavoriteLabel: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let planet = planet else { return }
        planetNameLabel.text = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        dayLengthLabel.text = "\(planet.dayLength)"
        distanceLabel.text = "\(planet.millionKMsFromSun)"
        if planet.myFavorite == true {
            myFavoriteLabel.isHidden = false
        } else {
            myFavoriteLabel.isHidden = true
        }
    }

}
