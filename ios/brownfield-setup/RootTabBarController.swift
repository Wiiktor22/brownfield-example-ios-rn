//
//  RootTabBarController.swift
//  brownfield-setup
//
//  Created by Wiktor Szlegier on 22/08/2023.
//

import UIKit
import React

class RootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()

        // Do any additional setup after loading the view.
    }
    
    private func constructReactNativeViewController() -> UIViewController? {
        let jsLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index") { nil }
        
        guard let bundleURL = jsLocation else { return nil }
        
        let rootView = RCTRootView(
            bundleURL: bundleURL,
            moduleName: "ReactNativeScreen",
            initialProperties: nil,
            launchOptions: nil
        )
        
        let vc = UIViewController()
        vc.view = rootView
        return vc
        
    }
    
    private func setupTabs() {
        let swiftTab = self.createNav(title: "Swift", image: UIImage(systemName: "swift"), vc: ViewController())
        let reactNativeTab = self.createNav(title: "React Native", image: UIImage(systemName: "atom"), vc: constructReactNativeViewController() ?? RNViewController())
        
        self.setViewControllers([swiftTab, reactNativeTab], animated: true)
    }
    
    private func createNav(title: String, image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        
        nav.viewControllers.first?.navigationItem.title = title
        
        return nav
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
