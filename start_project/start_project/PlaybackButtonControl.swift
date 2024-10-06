//
//  PlaybackButtonControl.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 03/04/1446 AH.
//

import SwiftUI

struct PlaybackButtonControl: View {
    
    var systemName: String = "play"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: ()-> Void
    
    var body: some View {
        
        Button{
            action()
            
        }label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }
        
    }
}

#Preview {
    PlaybackButtonControl( action: {})
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
