//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Rama Milaneh on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle{
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    init(name: String, weight: Double, maxSpeed: Double){
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast(){
        self.speed = self.maxSpeed
    }
    
    func halt(){
        self.speed = 0.0
    }
    
    func accelerate(){
        let newSpeed = self.speed + 0.1*self.maxSpeed
        if(newSpeed<self.maxSpeed){
            self.speed = newSpeed
        }
    }
    
    func decelerate(){
        let newSpeed = self.speed - 0.1*self.maxSpeed
        if(newSpeed>0.0){
            self.speed = newSpeed
        }
  
    }
    
    func turnRight(){
        var newDegree = self.heading + 90
        if newDegree>360{
            newDegree = newDegree - 360
        }
        if (newDegree>=0) && (newDegree<360) && (self.speed>0.0){
          self.heading = newDegree
          self.speed = self.speed/2
        }
    }
    
    func turnLeft(){
        var newDegree: Double
        
        if self.heading>=90{
            newDegree = self.heading - 90
        }else{
            newDegree = 360-(90-self.heading)
        }
        
        if (0...360).contains(newDegree) && (self.speed > 0.0) {
            self.heading = newDegree
            self.speed = self.speed/2
        }
    }
    
}
