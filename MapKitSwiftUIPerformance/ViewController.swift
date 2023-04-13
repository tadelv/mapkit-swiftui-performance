//
//  ViewController.swift
//  MapKitSwiftUIPerformance
//
//  Created by Vid Tadel on 4/11/23.
//

import MapKit
import UIKit


class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let mapView = MKMapView()
    mapView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(mapView)
    mapView.sizeToFit(view)

    mapView.addAnnotations(annotations)
    mapView.setRegion(.init(center: annotations.first!.coordinate,
                            span: .init(latitudeDelta: 0.005,
                                        longitudeDelta: 0.005)), animated: false)

  }
}

extension ViewController: MKMapViewDelegate {

}

extension UIView {
  func sizeToFit(_ other: UIView) {
    NSLayoutConstraint.activate([
      self.leadingAnchor.constraint(equalTo: other.leadingAnchor),
      self.trailingAnchor.constraint(equalTo: other.trailingAnchor),
      self.topAnchor.constraint(equalTo: other.topAnchor),
      self.bottomAnchor.constraint(equalTo: other.bottomAnchor),
    ])
  }
}
