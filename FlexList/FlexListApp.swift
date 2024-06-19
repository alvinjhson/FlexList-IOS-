//
//  FlexListApp.swift
//  FlexList
//
//  Created by Alvin Johansson on 2024-06-16.
//

import SwiftUI
import Firebase

@main
struct FlexListApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      print("Configured FIrebase!")

    return true
  }
}
