//
//  Data.swift
//  MapKitSwiftUIPerformance
//
//  Created by Vid Tadel on 4/12/23.
//

import Foundation
import MapKit

class POI: NSObject, Decodable, MKAnnotation {
  let latitude: Double
  let longitude: Double

  var coordinate: CLLocationCoordinate2D {
    .init(latitude: latitude, longitude: longitude)
  }

  init(latitude: Double, longitude: Double) {
    self.latitude = latitude
    self.longitude = longitude
  }

}

let annotations: [POI] = {
  generateAnnotations()
}()

func generateAnnotations() -> [POI] {
  let seed = CLLocationCoordinate2D(latitude: Double.random(in: -55.555555...55.55555555),
                                    longitude: Double.random(in: -50.55555...55.55555))
  var pois: [POI] = []
  for _ in 0...10000 {
    pois.append(
      POI(
        latitude: seed.latitude + Double.random(in: -5.5555...5.55555),
        longitude: seed.longitude + Double.random(in: -5.5555...5.55555)
      )
    )
  }
  return pois
}
