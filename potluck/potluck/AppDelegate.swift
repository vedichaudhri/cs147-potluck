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
        
        let defaults = UserDefaults.standard
        let initInfo : [String:Any] = ["created":false, "firstName":"", "lastName":"", "gender":"", "age":"", "location":"", "bio":""]
        let charAvatarInfo : [String:String] = ["char1":"SarahLamAvatar", "char2":"ZariaJonesAvatar", "char3":"SergioGarciaAvatar", "char4":"NelsonSandersAvatar", "char5":"SusisYongAvatar", "char6":"GeorgeTubbsAvatar", "char7":"MaryYuAvatar", "char8":"LarryWilsonAvatar"]

        let nelsonInfo: [String: Any] = ["created":true, "firstName":"Nelson", "lastName":"Sanders", "gender":"M", "age":"42", "location":"New York", "bio":"Nelson grew up in Nigeria and moved to the States for university, where he studied computer science. He has been working in tech for over twenty years and currently lives in New York with his family."]
        
        let susieInfo: [String: Any] = ["created":true, "firstName":"Susie", "lastName":"Young", "gender":"F", "age":"23", "location":"Laguna Beach", "bio":"Susie is a Korean-American born in Atlanta but raised in Laguna Beach. She just graduated from university and loves hiking, and playing with her two golden doodles."]
        
        let georgeInfo: [String: Any] = ["created":true, "firstName":"George", "lastName":"Tubbs", "gender":"M", "age":"20", "location":"Stanford", "bio":"George grew up in Trinidad and is currently a college athlete at Stanford University. He is passionate about running and hopes to be a professional athlete. He wants to be inspired by similar athletes that have achieved greatness."]
        
        let maryInfo: [String: Any] = ["created":true, "firstName":"Mary", "lastName":"Yu", "gender":"F", "age":"68", "location":"Seattle", "bio":"Mary grew up in Hong Kong and moved to the States after graduating unviersity with a degree in mechanical engineering. She worked for over thirty years as an engineer and is now happily retired. She lives with her husband and cat in Seattle."]
        
        let larryInfo: [String: Any] = ["created":true, "firstName":"Larry", "lastName":"Wilson", "gender":"M", "age":"72", "location":"Redmond", "bio":"Larry recently retired from the construction industry, where he worked for over 40 years. He currently lives in Redmond but often flies to Ireland to visit his siblings. He enjoys long backpacking trips."]
        
        defaults.set(initInfo, forKey: "char1")
        defaults.set(initInfo, forKey: "char2")
        defaults.set(initInfo, forKey: "char3")
        defaults.set(nelsonInfo, forKey: "char4")
        defaults.set(susieInfo, forKey: "char5")
        defaults.set(georgeInfo, forKey: "char6")
        defaults.set(maryInfo, forKey: "char7")
        defaults.set(larryInfo, forKey: "char8")
        defaults.set(charAvatarInfo, forKey: "charAvatarInfo")
        defaults.set("char1", forKey: "charToView")
        defaults.set("immigration", forKey: "searchView")
        
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

