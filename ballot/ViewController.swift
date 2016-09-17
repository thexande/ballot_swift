//
//  ViewController.swift
//  ballot
//
//  Created by Alexander Murphy on 9/14/16.
//  Copyright © 2016 Alexander Murphy. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{
    let rootRef = FIRDatabase.database().reference()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Getting user permission for location data
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    // horizontal slider
    
    // create new poll
    func createPoll() {
        rootRef.child("posts").childByAutoId().setValue("woot")
    }
    // create poll button
    @IBAction func createPollButton(sender: AnyObject) {
        print("create poll view")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var locValue:CLLocationCoordinate2D = manager.location.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
    }
}

