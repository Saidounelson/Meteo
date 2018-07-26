//
//  LocalisationExtension.swift
//  CodabeeMeteo
//
//  Created by mac on 25/07/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import MapKit

extension MeteoController: CLLocationManagerDelegate {
    
    
    func miseEnPlace() {
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard locations.count > 0 else {return}
        locationManager?.stopUpdatingLocation()
        let positionActuelle = locations[0]
        let latitude  = positionActuelle.coordinate.latitude
        let longitude = positionActuelle.coordinate.longitude
        print("Latitude: \(latitude) Longitude: \(longitude)")
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
}
