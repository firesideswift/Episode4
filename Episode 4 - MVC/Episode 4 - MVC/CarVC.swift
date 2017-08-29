//
//  CarVC.swift
//  Episode 4 - MVC
//
//  Created by Zack Falgout on 8/25/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import UIKit

class CarVC: UIViewController {
    
    
    @IBOutlet weak var fuelGaugeLabel: UILabel!
    @IBOutlet weak var odometerLabel: UILabel!
    @IBOutlet weak var shortTripButton: UIButton!
    @IBOutlet weak var mediumTripButton: UIButton!
    @IBOutlet weak var longTripButton: UIButton!
    
    var car: Car!

    override func viewDidLoad() {
        super.viewDidLoad()

        car = Car()
        
        fuelGaugeLabel.text = "\(car.fuelGauge)"
        odometerLabel.text = "\(car.odometer)"
    }
    
    
    @IBAction func takeShortTrip(_ sender: Any) {
        print("takeShortTrip pressed")
        car.takeATrip(of: .short)
        
        updateLabels()
        checkButtons()
    }

    @IBAction func takeMediumTrip(_ sender: Any) {
        print("takeMediumTrip pressed")
        car.takeATrip(of: .medium)
        
        updateLabels()
        checkButtons()
    }

    @IBAction func takeLongTrip(_ sender: Any) {
        print("takeLongTrip pressed")
        car.takeATrip(of: .long)
        
        updateLabels()
        checkButtons()
    }
    
    @IBAction func fillUp(_ sender: Any) {
        print("fillUp pressed")
        car.refillTank()
        
        updateLabels()
        
        shortTripButton.isEnabled = true
        mediumTripButton.isEnabled = true
        longTripButton.isEnabled = true
        
        shortTripButton.alpha = CGFloat(1.0)
        mediumTripButton.alpha = CGFloat(1.0)
        longTripButton.alpha = CGFloat(1.0)
    }
    
    func updateLabels() {
        fuelGaugeLabel.text = "\(car.fuelGauge)"
        odometerLabel.text = "\(car.odometer)"
    }
    
    func checkButtons() {
        
        if car.fuelGauge < 10 {
            shortTripButton.isEnabled = false
            shortTripButton.alpha = CGFloat(0.5)
            
            mediumTripButton.isEnabled = false
            mediumTripButton.alpha = CGFloat(0.5)
            
            longTripButton.isEnabled = false
            longTripButton.alpha = CGFloat(0.5)
            
        } else if car.fuelGauge < 20 {
            mediumTripButton.isEnabled = false
            mediumTripButton.alpha = CGFloat(0.5)
            
            longTripButton.isEnabled = false
            longTripButton.alpha = CGFloat(0.5)
        } else if car.fuelGauge < 40 {
            longTripButton.isEnabled = false
            longTripButton.alpha = CGFloat(0.5)
        }
    }
    
}
