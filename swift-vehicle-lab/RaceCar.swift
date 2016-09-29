//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Rama Milaneh on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class RaceCar: Car{
    let driver: String
    var sponsors: [String]
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Double, milesPerGallon: Double,driver: String, sponsors: [String]){
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        let newSpeed = self.speed + 0.2*self.maxSpeed
        if (newSpeed <= self.maxSpeed){
            self.speed = newSpeed
        }
    }
    
    override func decelerate() {
        let newSpeed = self.speed - 0.2*self.maxSpeed
        if (newSpeed >= 0.0){
            self.speed = newSpeed
        }
    }
    
    func driftRight(){
        var newDegree = self.heading + 90
        if newDegree > 360{
            newDegree = newDegree - 360
        }
        if (0..<360).contains(newDegree) && (self.speed>0.0){
            self.heading = newDegree
            self.speed -= self.speed/4
        }
    }
    
    func driftLeft(){
        var newDegree: Double
        
        if self.heading>=90{
            newDegree = self.heading - 90
        }else{
            newDegree = 360-(90-self.heading)
        }
        
        if (0...360).contains(newDegree) && (self.speed > 0.0) {
            self.heading = newDegree
            self.speed -= self.speed/4
        }
    }
    
    
}
