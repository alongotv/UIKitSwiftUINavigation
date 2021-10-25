//
//  FirstViewController.swift
//  UIKitSwiftUINavigation
//
//  Created by Vladimir Vetrov on 25.10.2021.
//

import UIKit

class FirstViewController: UIViewController {

    var delegate: OnFirstButtonClickedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let label = UILabel(frame: self.view.frame)
//        label.text = "First UIKitView Controller"
//        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        button.backgroundColor = .gray
        button.setTitle("Navigate to 2nd VC", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.layer.cornerRadius = 4.0
        self.view.addSubview(button)

        self.navigationItem.title = "Your Title"
        // Do any additional setup after loading the view.
    }
    
    @objc func didTapButton() {
        self.delegate?.didTapButton()
    }
}
