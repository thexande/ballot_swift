//
//  newPollViewController.swift
//  ballot
//
//  Created by Alexander Murphy on 9/15/16.
//  Copyright © 2016 Alexander Murphy. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation


class newPollViewController : UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var rangeSlider: UISlider!
    @IBOutlet weak var rangeLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!

    let locationManager = CLLocationManager()
    
    
    
        
    
    @IBAction func pollRangeSlider(sender: UISlider) {
        let currentValue = Int(sender.value)
        rangeLabel.text = "\(currentValue)"
    }
}