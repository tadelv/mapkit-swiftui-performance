//
//  SceneDelegate.swift
//  MapKitSwiftUIPerformance
//
//  Created by Vid Tadel on 4/11/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let scene = (scene as? UIWindowScene) else { return }
    self.window = UIWindow(windowScene: scene)
    let root = UINavigationController(rootViewController: RootViewController())
    window?.rootViewController = root
    window?.makeKeyAndVisible()
  }
}

