//
//  MakeItSoApp.swift
//  MakeItSo
//
//  Created by mac on 18/07/2023.
//

import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication,
                     didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool
    {
        FirebaseApp.configure()

//        let useEmulator = UserDefaults.standard.bool(forKey: "useEmulator")
//        if useEmulator {
//            let settings = Firestore.firestore().settings
//            settings.host = "localhost:8080"
//            settings.isSSLEnabled = false
//            Firestore.firestore().settings = settings
//
//            Auth.auth().useEmulator(withHost: "localhost", port: 9099)
//        }

        return true
    }
}

@main
struct MakeItSoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RemindersListView()
                    .navigationTitle("Reminders")
            }
        }
    }
}
