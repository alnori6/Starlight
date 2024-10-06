//
//  ContentView.swift
//  start_project
//
//  Created by Noori on 01/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Wejdan Views")
        }
        .padding()
    }
    
    init() {
    for familyName in UIFont.familyNames {
    print(familyName)
    for fontName in UIFont.fontNames(forFamilyName: familyName){
    print("-- (fontName)")}
    }
    }
}

#Preview {
    ContentView()
}
