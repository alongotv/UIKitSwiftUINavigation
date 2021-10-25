//
//  ContentView.swift
//  UIKitSwiftUINavigation
//
//  Created by Vladimir Vetrov on 25.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var shouldNavigateToSecondViewController: Bool = false
    
    var body: some View {
        // NavigationView – a SwiftUI analogue for UINavigationController
        NavigationView {
            ZStack {
                FirstViewControllerRepresentable { //onButtonClicked:
                    shouldNavigateToSecondViewController = true
                }.navigationTitle("First VC")
                // NavigationLink – triggers transition between views (Only works inside a NavigationView)
                NavigationLink(destination:
                                // Our destination view controller
                               SecondViewControllerRepresentable()
                                .navigationTitle("Second VC"),
                               // Fires the transition when shouldNavigateToSecondViewController == true
                               isActive: $shouldNavigateToSecondViewController) { /* Leave as is */ }
            }.edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
