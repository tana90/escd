//
//  VenueCell.swift
//  ESCD2018
//
//  Created by Tudor Ana on 9/5/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit
import MapKit

final class VenueCell: UITableViewCell {
    
    @IBOutlet weak var mapView: MKMapView!
    
    func show() {
        //38.769372, -9.094150
        let annotation = MKPointAnnotation()
        let centerCoordinate = CLLocationCoordinate2D(latitude: 38.769372, longitude:-9.094150)
        annotation.coordinate = centerCoordinate
        annotation.title = "Feira Internacional de Lisboa"
        annotation.subtitle = "R. Bojador, 1998-010 Lisboa, Portugalia"
        mapView.addAnnotation(annotation)
        
        let span = MKCoordinateSpanMake(0.012, 0.012)
        let region = MKCoordinateRegionMake(centerCoordinate, span)
        mapView.region = region
    }
}
