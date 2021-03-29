//
//  AppDelegate.swift
//  insta
//
//  Created by Mark Cruz on 3/14/21.
//



import Parse
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    // AppDelegate.swift

    // Don't forget to install Parse pods!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // --- Copy this only
        
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "UipW4uhJA8hCQG5BIqAcIhVSpFoNb56SVZdL8pjM" // <- UPDATE
                $0.clientKey = "PYqsdmyhTmVvx95tYCrJW5s2pnoLNn7EWA5ovTuK" // <- UPDATE
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
       


        return true
    }



}

