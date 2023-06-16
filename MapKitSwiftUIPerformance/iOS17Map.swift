//
//  iOS17Map.swift
//  MapKitSwiftUIPerformance
//
//  Created by Vid Tadel on 6/6/23.
//

import Foundation
import MapKit
import SwiftUI

@available(iOS 17, *)
extension POI: Identifiable {
  var id: String {
    "\(latitude)+\(longitude)"
  }
}

@available(iOS 17, *)
struct iOS17Map: View {

  @State var position: MapCameraPosition = .automatic
  var body: some View {
    Map(position: $position) {
      ForEach(annotations) { annotation in
        Annotation(annotation.id,
                   coordinate: annotation.coordinate) {
          Text("a")
        }
      }
    }
    .onAppear {
      position = .camera(.init(centerCoordinate: annotations[0].coordinate, distance: 100))
    }
  }
}
