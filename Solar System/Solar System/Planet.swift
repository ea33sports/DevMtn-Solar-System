//
//  Planet.swift
//  Solar System
//
//  Created by Eric Andersen on 8/21/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import Foundation

class Planet {
    
    init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float, myFavorite: Bool) {
        
        self.name = name
        self.imageName = name.lowercased()
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
        self.myFavorite = myFavorite
    }
    
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKMsFromSun: Float
    let myFavorite: Bool
}
