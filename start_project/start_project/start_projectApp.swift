//
//  start_projectApp.swift
//  start_project
//
//  Created by Noori on 01/10/2024.
//

import SwiftUI

@main
struct start_projectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentOhoud()
            ViewSad()
            CalmView()
            ViewAngry()
            ViewAnxious()
            splash_page()
            GIFImage(name: "animation")
        }
    }
}
