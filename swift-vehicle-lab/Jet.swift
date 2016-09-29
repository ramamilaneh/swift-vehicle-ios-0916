//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Rama Milaneh on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Jet:Plane {
    override func climb() {
        let newAltitude = self.altitude + 0.2*self.maxAltitude
        if newAltitude <= self.maxAltitude && self.inFlight {
            self.altitude = newAltitude
            super.decelerate()
        }
    }
    
    override func dive() {
        
        if self.altitude>0{
            self.altitude -= 0.2*self.maxAltitude
            if (self.altitude>0) {
                super.accelerate()
            }else if self.speed == 0 {
                super.accelerate()
            }else{
                self.altitude = 0
            }
        }
    }
    func afterburner(){
        if self.speed == self.maxSpeed && self.inFlight {
            self.speed = 2*self.maxSpeed
        }
    }
}
