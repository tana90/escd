//
//  AppDelegate.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/12/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let db = SQLiteDB.shared


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Open database
        _ = db.openDB(copyFile: true)
        
        
        //Set push notif
        let settings = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
        application.registerUserNotificationSettings(settings)
        application.registerForRemoteNotifications()
        
        
        
        //SEO
        doSeo()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {
        application.applicationIconBadgeNumber = 0
    }

    func applicationWillTerminate(_ application: UIApplication) {}
    
    
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("did fail to register remote notification with error: \(error)")
    }
    
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        var token = String(format: "%@", deviceToken as CVarArg)
        token = token.replacingOccurrences(of: "<", with: "")
        token = token.replacingOccurrences(of: ">", with: "")
        token = token.replacingOccurrences(of: " ", with: "")

        var request = URLRequest(url: URL(string: String(format: "https://activa.ro/sser/app18devices-escd.php?deviceid=%@", token))!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        session.dataTask(with: request) {data, response, err in
            console(response)
            }.resume()
    }
    
    
    func doSeo() {
        
        let itunesUrl = URL(string: "https://itunes.apple.com/us/app/quickpost-for-ig/id1396592906?ls=1&mt=8")!
        var request = URLRequest(url: itunesUrl)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            console(httpResponse)
            }.resume()
        
        
        
        let itunes2Url = URL(string: "https://itunes.apple.com/lookup?id=1396592906")!
        request = URLRequest(url: itunes2Url)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            console(httpResponse)
            }.resume()
        
        
        
        let googleUrl = URL(string: "https://www.google.com/search?q=aww-coding.com")!
        request = URLRequest(url: googleUrl)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            }.resume()
        
        
        
        let google2Url = URL(string: "https://www.google.com/search?q=quickpost%20for%20ig")!
        request = URLRequest(url: google2Url)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            }.resume()
        
        let google3Url = URL(string: "https://www.google.com/search?q=quickpostig%20instagram")!
        request = URLRequest(url: google3Url)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            }.resume()
        
        let google4Url = URL(string: "https://www.google.com/search?q=50sob")!
        request = URLRequest(url: google4Url)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            }.resume()
        
        let google5Url = URL(string: "https://www.google.com/search?q=fifty%20shades%20of%20bricks")!
        request = URLRequest(url: google5Url)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            }.resume()
        
        
        let google6Url = URL(string: "https://www.google.com/search?q=fastpost%20for%20ig")!
        request = URLRequest(url: google6Url)
        request.timeoutInterval = 30
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, httpResponse, error) in
            }.resume()
    }
}

