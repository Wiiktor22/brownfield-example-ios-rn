//
//  ViewController.swift
//  brownfield-setup
//
//  Created by Wiktor Szlegier on 22/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        addMainLabel()
    }
    
    private func addMainLabel() {
        let swiftLabel = UILabel(frame: CGRect(x: 0, y: self.view.center.y, width: 200, height: 50))
        swiftLabel.textAlignment = .center
        swiftLabel.text = "Swift - UIKit"
        swiftLabel.center = self.view.center
        self.view.addSubview(swiftLabel)
    }

}

