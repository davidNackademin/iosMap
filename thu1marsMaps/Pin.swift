//
//  Pin.swift
//  thu1marsMaps
//
//  Created by David Svensson on 2018-03-01.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import Foundation
import MapKit

class Pin : NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        title = "varit här"
    }
    
    
}

