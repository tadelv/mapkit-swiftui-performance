//
//  ViewControllerRepresentable.swift
//  MapKitSwiftUIPerformance
//
//  Created by Vid Tadel on 05/07/2023.
//

import SwiftUI

struct EmbeddedViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
