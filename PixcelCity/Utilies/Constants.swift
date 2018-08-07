//
//  Constants.swift
//  PixcelCity
//
//  Created by tolga iskender on 7.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import Foundation

let apiKey = "9c7d7c58369f25b868cd01920afa39e8"

func flikrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, addNumberOfPhotos number: Int) -> String
{
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}
