//
//  AppDelegate.swift
//  projectWithoutStoryboard
//
//  Created by Boominadha Prakash on 30/10/17.
//  Copyright © 2017 Boominadha Prakash. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = {
        let w = UIWindow()
        w.backgroundColor = .white
        w.makeKeyAndVisible()
        return w
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        rootSceneSetup()
        return true
    }
    
    func rootSceneSetup(){
        let nc:UINavigationController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = nc
    }
    
}

