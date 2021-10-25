//
//  SecondViewController.swift
//  UIKitSwiftUINavigation
//
//  Created by Vladimir Vetrov on 25.10.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let label = UILabel(frame: self.view.frame)
        label.text = "Second UIKit ViewController"
        self.view.addSubview(label)
    }
}
