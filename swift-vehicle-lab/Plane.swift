//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Rama Milaneh on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Plane: Vehicle{
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool{
        if self.speed>0 && self.altitude>0 {
            return true
        }
        else{
            return false
        }
    }
    init( name: String, weight: Double, maxSpeed: Double, maxAltitude: Double){
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff(){
        if !self.inFlight{
            self.altitude = 0.1*self.maxAltitude
            self.speed = 0.1*self.maxSpeed
        }
    }
    
    func land(){
        self.speed = 0
        self.altitude = 0
    }
    
    func climb(){
        let newAltitude = self.altitude + 0.1*self.maxAltitude
        if newAltitude <= self.maxAltitude && self.inFlight {
            self.altitude = newAltitude
            super.decelerate()
        }
    }
    
    func dive(){
        if self.altitude>0{
            self.altitude -= 0.1*self.maxAltitude
            if (self.altitude>0) {
                super.accelerate()
            }else if self.speed == 0 {
                super.accelerate()
            }else{
                self.altitude = 0
            }
        }
        
    }
    
    func bankRight(){
        var newDegree = self.heading + 45
        if newDegree>360{
            newDegree = newDegree - 360
        }
        if self.inFlight{
        if (0...360).contains(newDegree) && (self.speed>0.0){
            self.heading = newDegree
            self.speed -= 0.1*self.speed
        }
        }

    }
    
    func bankLeft(){
        var newDegree: Double
        
        if self.heading>=45{
            newDegree = self.heading - 45
        }else{
            newDegree = 360-(45-self.heading)
        }

        if self.inFlight{
            if (0...360).contains(newDegree) && (self.speed>0.0){
                self.heading = newDegree
                self.speed -= 0.1*self.speed
            }
        }
 
    }
    
    
}
