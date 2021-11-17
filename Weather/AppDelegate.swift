//
//  AppDelegate.swift
//  Weather
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let records = DBLayer().loadAllBookMarks()
        print(records.count)
        return true
    }

}

