//
//  AppDelegate.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/6/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        /*
         * TODO : update defaults to include all of the character properties. initialize them as nil. 
        */
        let defaults = UserDefaults.standard
        let initInfo : [String:String] = ["firstName":"", "lastName":"", "avatar":"", "gender":"", "age":"", "location":"", "bio":""]
        defaults.set(initInfo, forKey: "char1")
        defaults.set(["created":false], forKey: "char1")
        defaults.set(initInfo, forKey: "char2")
        defaults.set(["created":false], forKey: "char2")
        defaults.set(initInfo, forKey: "char3")
        defaults.set(["created":false], forKey: "char3")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

