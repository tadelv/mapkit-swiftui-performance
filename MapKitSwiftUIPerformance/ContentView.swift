//
//  ContentView.swift
//  MapKitSwiftUIPerformance
//
//  Created by Vid Tadel on 4/12/23.
//

import MapKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        MapView()
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MapView: UIViewRepresentable {
  func makeUIView(context: Context) -> some UIView {
    let view = MKMapView()
    view.addAnnotations(annotations)
    view.setRegion(.init(center: annotations.first!.coordinate,
                         span: .init(latitudeDelta: 0.005,
                                     longitudeDelta: 0.005)), animated: false)

    return view
  }

  func updateUIView(_ uiView: UIViewType, context: Context) {

  }
}
