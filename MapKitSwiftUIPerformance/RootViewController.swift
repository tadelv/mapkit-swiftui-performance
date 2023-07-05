//
//  RootViewController.swift
//  MapKitSwiftUIPerformance
//
//  Created by Vid Tadel on 4/11/23.
//

import MapKit
import UIKit
import SwiftUI

class RootViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    // preload annotations
    _ = annotations

    let stack = UIStackView()
    stack.axis = .vertical
    stack.spacing = 16
    stack.translatesAutoresizingMaskIntoConstraints = false
    stack.addArrangedSubview(UIView())
    stack.addArrangedSubview(UIButton(primaryAction: UIAction(title: "UIKit") { [weak navigationController] _ in
      navigationController?.pushViewController(ViewController(), animated: true)
    }))
    stack.addArrangedSubview(UIButton(primaryAction: UIAction(title: "SwiftUI") { [weak navigationController] _ in
      navigationController?.pushViewController(UIHostingController(rootView: ContentView()), animated: true)
    }))
    stack.addArrangedSubview(UIButton(primaryAction: UIAction(title: "ViewControllerRepresentable") { [weak navigationController] _ in
      navigationController?.pushViewController(UIHostingController(rootView: EmbeddedViewController()), animated: true)
    }))
#if BUILD_IOS_17
    if #available(iOS 17.0, *) {
      stack.addArrangedSubview(UIButton(primaryAction: UIAction(title: "SwiftUI17") { [weak navigationController] _ in
        navigationController?.pushViewController(UIHostingController(rootView: iOS17Map()), animated: true)
      }))
    }
#endif

    view.addSubview(stack)
    NSLayoutConstraint.activate([
      stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      stack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
}
