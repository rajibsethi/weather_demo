//
//  AppDelegate.swift
//  VirtusaWeather
//
//  Created by Rajib Sethi on 10/05/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var rootController: RootController?
    var window: UIWindow?
    
    static func shared() -> AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let mainNavigationVC = UINavigationController()
        rootController = RootController(navigationController: mainNavigationVC)
        rootController?.start()
        window?.rootViewController = mainNavigationVC
        
        return true
    }


}

