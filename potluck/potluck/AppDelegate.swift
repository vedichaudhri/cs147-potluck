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
        let emptyTimeline: [[String]] = [[" ", " ", " "]]
        let initInfo : [String:Any] = ["created":false, "firstName":"", "lastName":"", "gender":"", "age":"", "location":"", "bio":"", "timeline":emptyTimeline]
        let charAvatarInfo : [String:String] = ["char1":"SarahLamAvatar", "char2":"ZariaJonesAvatar", "char3":"SergioGarciaAvatar", "char4":"NelsonSandersAvatar", "char5":"SusisYongAvatar", "char6":"GeorgeTubbsAvatar", "char7":"MaryYuAvatar", "char8":"LarryWilsonAvatar"]
        
        let nelsonTimeline: [[String]] = [["Made time to prioritize myself", "I think a common pitfall of the immigrant experience is that people work so incredibly hard to fit in, but then overlook themselves. This weekend, I had a wonderful time rediscovering old family recipes and baking for my family.", "Character1StoryPic1"], ["Son's school", "I'm thinking about transferring my son, who will be entering high school in a year, from a public school to a private school. We just visited one the other day, but I'm concerned about tuition costs.", "school"], ["Renew passport", "I always dread anything passport/visa/license related. Anyone have tips on how to navigate a frustrating process?", "passport"], ["New foods", "My frinds from France are visiting this weekend, and I've decided to take take them to a French restaurant. I've never tried traditional French food before, so I'm excited to try.", "kimchi"]]
        let nelsonInfo: [String: Any] = ["created":true, "firstName":"Nelson", "lastName":"Sanders", "gender":"M", "age":"42", "location":"New York", "bio":"Nelson grew up in Nigeria and moved to the States for university, where he studied computer science. He has been working in tech for over twenty years and currently lives in New York with his family.", "timeline": nelsonTimeline]
        
        let susieTimeline: [[String]] = [["Cooking with friends", "It's tough to keep in touch with friends post-grad, especially since many of my friends who were international students decided to move back home. This weekend though, some of my friends still in the area got together and we cooked a meal together.", "kimchi"]]
        
        let susieInfo: [String: Any] = ["created":true, "firstName":"Susie", "lastName":"Young", "gender":"F", "age":"23", "location":"Laguna Beach", "bio":"Susie is a Korean-American born in Atlanta but raised in Laguna Beach. She just graduated from university and loves hiking, and playing with her two golden doodles.", "timeline":susieTimeline]
        
        let georgeTimeline: [[String]] = [["Getting ready for the race of a lifetime", "Being an athlete certainly hasn't been easy. After moving to a big city, I've been having a harder time finding places to train. It's not like my hometown where there are large open spaces everywhere, though I'm enjoying using running as a way to explore the city.", "Character10StoryPic1"]]
        
        let georgeInfo: [String: Any] = ["created":true, "firstName":"George", "lastName":"Tubbs", "gender":"M", "age":"20", "location":"Stanford", "bio":"George grew up in Trinidad and is currently a college athlete at Stanford University. He is passionate about running and hopes to be a professional athlete. He wants to be inspired by similar athletes that have achieved greatness.", "timeline":georgeTimeline]
        
        let maryTimeline: [[String]] = [["Finding affordable housing in new city", "I recently moved to a new city to be closer to my parents, who are elderly and speak limited English. I've been having a tough time finding affordable housing, and I haven't been able to find a realtor who accommodates my needs.", "apartment"], ["Home cooking", "I prepare some traditional Korean side dishes the other day and it made me really miss my home and my family back in Korea. It was very therapeutic to make.", "kimchi"], ["Visiting Korea", "I'm flying back to Korea soon to visit my parents. I don't go back as much as I wish I could because it's so far, but I'm excited to see my childhood home.", "airport"]]
        let maryInfo: [String: Any] = ["created":true, "firstName":"Mary", "lastName":"Yu", "gender":"F", "age":"68", "location":"Seattle", "bio":"Mary grew up in Hong Kong, moved to Korea for university,  and then moved to the States after graduating with a degree in mechanical engineering. She worked for over thirty years as an engineer and is now happily retired. She lives with her husband and cat in Seattle.", "timeline":maryTimeline]
        
        let larryTimeline: [[String]] = [["Negotiate salary", "Tomorrow, I plan on asking my boss for a raise. I've been working hard all year and think I deserve it. Wish me luck.", "Character1QuestionPic1"], ["Art classes", "I'm looking for some art classes in the area, especially painting. I used to paint as a child and have missed it a lot.", "art"], ["Groceries", "My mom used to make this really delicious Irish cabbage dish, but I'm having a hard time finding a grocery store that carries it. I'll call her tonight and ask her for advice.", "Character4StoryPic1"]]
        let larryInfo: [String: Any] = ["created":true, "firstName":"Larry", "lastName":"Wilson", "gender":"M", "age":"72", "location":"Redmond", "bio":"Larry recently retired from the construction industry, where he worked for over 40 years. He currently lives in Redmond but often flies to Ireland to visit his siblings. He enjoys long backpacking trips.", "timeline":larryTimeline]
        
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

