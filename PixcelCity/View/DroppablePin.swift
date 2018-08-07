//
//  DroppablePin.swift
//  PixcelCity
//
//  Created by tolga iskender on 7.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation{
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate:CLLocationCoordinate2D, identifier:String)
    {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
