//
//  SecondViewControllerRepresentable.swift
//  UIKitSwiftUINavigation
//
//  Created by Vladimir Vetrov on 25.10.2021.
//

import SwiftUI

struct SecondViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = SecondViewController
    
    func makeUIViewController(context: Context) -> SecondViewController {
        let controller = SecondViewController()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: SecondViewController, context: Context) {
        
    }
}
