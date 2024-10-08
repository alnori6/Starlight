//
//  start_projectApp.swift
//  start_project
//
//  Created by Noori on 01/10/2024.
//

import SwiftUI

@main
struct start_projectApp: App {
    
    @StateObject var audioManeger = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            SplashPage().environmentObject(audioManeger)
        }
    }
}
