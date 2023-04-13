# mapkit-swiftui-performance
A case study for performance of MapKit view embedded in SwiftUI.

The full story can be read [here](https://vid.tadel.net/swiftui/mapkit/2023/04/12/mapkit-in-swiftui.html).

The project features a simple root screen with options to navigate to specific implementations of MapView.

UIKit button leads you to the UIKit implementation. A `MKMapView` added to a `UIViewController`.

SwiftUI button leads you to the SwiftUI implementation. A `MKMapView` added to a SwiftUI container using `UIViewRepresentable`.


# - 
Annotations are generated randomly at the start of the application. 10k annotations are added to both map views to test performance of using pinch to zoom-out on the map view.

