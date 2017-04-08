//
//  AppDelegate.swift
//  Flo
//
//  Created by Deep Parekh on 4/7/17.
//  Copyright © 2017 Parekh Bros. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        initWindow()
        initNavBar()
        return true
    }
    
    private func initWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: FloController())
        window?.makeKeyAndVisible()
    }
    
    private func initNavBar() {
        let navBar = UINavigationBar.appearance()
        navBar.barStyle = .black
        navBar.barTintColor = .blue
        navBar.tintColor = .blue
    }
}

