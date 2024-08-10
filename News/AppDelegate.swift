//
//  AppDelegate.swift
//  News
//
//  Created by Олег Дербин on 07.08.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions 
                     launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window {
            let tabBar = TapBarController()
            window.rootViewController = tabBar
            window.makeKeyAndVisible()
        }
        
        
        
        return true
    }

}

