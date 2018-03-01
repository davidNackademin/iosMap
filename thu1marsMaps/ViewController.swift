//
//  ViewController.swift
//  thu1marsMaps
//
//  Created by David Svensson on 2018-03-01.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.setUserTrackingMode(.follow, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func dropPin(_ sender: UIBarButtonItem) {
        let pin = Pin(coordinate: mapView.userLocation.coordinate)
        mapView.addAnnotation(pin)
    }
    
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let width = 50.0 // meter
        let height = 50.0
        let region = MKCoordinateRegionMakeWithDistance(center, width, height)
        mapView.setRegion(region, animated: true)
    }
    
    
    
//    @IBAction func openMaps(_ sender: UIButton) {
//        if let url = URL(string: "http://maps.apple.com/?q=37.331686,-122.030656") {
//            print("map")
//            let app = UIApplication.shared
//            app.open(url)
//        }
//   }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

