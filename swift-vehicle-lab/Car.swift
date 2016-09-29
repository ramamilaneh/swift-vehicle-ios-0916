//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Rama Milaneh on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Car:Vehicle {
    let transmission: String
    let cylinders: Double
    let milesPerGallon: Double
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Double, milesPerGallon: Double){
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        self.transmission = transmission
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    func drive(){
        super.accelerate()
    }
    func brake(){
        super.decelerate()
    }
    
    
}
