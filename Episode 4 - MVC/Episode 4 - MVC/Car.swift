//
//  Car.swift
//  Episode 4 - MVC
//
//  Created by Zack Falgout on 8/25/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

enum Distance {
    case short
    case medium
    case long
}

class Car {
    
    var fuelGauge: Int = 100 //Car is completely gassed when one is produced.
    var odometer: Int = 0 //These cars are brand new!
    
    func takeATrip(of distance: Distance) {

        switch distance {
        case .short:
            fuelGauge -= 10
            odometer += 5
        case .medium:
            fuelGauge -= 20
            odometer += 10
        case .long:
            fuelGauge -= 40
            odometer += 20
        }
        
    }
    
    func refillTank() {
        fuelGauge = 100
    }
    
}
