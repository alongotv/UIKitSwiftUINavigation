//
//  FirstViewControllerRepresentable.swift
//  UIKitSwiftUINavigation
//
//  Created by Vladimir Vetrov on 25.10.2021.
//

import SwiftUI

struct FirstViewControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = FirstViewController
    
    var onButtonClicked: (()-> Void)?
    
    class Coordinator: NSObject, OnFirstButtonClickedDelegate {
        var parent: FirstViewControllerRepresentable
        
        init(_ parent: FirstViewControllerRepresentable) {
            self.parent = parent
        }
        
        func didTapButton() {
            parent.onButtonClicked?()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> FirstViewController {
        let controller = FirstViewController()
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: FirstViewController, context: Context) {
        
    }
    
}
