//
//  splash_page.swift
//  start_project
//
//  Created by ohoud on 03/04/1446 AH.
//
//
//  splash_page.swift
//  start_project
//
//  Created by Noori on 03/10/2024.
//


import SwiftUI
////https://github.com/SDWebImage/SDWebImageSwiftUI
//import SDWebImageSwiftUI

extension Color {
    static let customColor = Color(red: 63 / 255, green: 75 / 255, blue: 127 / 255)
}

struct splash_page: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        GeometryReader { geometry in
            
          ZStack () {
            
            // Overlay the GIF on top of everything
            // Main content
            // Background color or image
            Image("background1")
              .resizable()
              .scaledToFill()
              .edgesIgnoringSafeArea(.all)
            
            GIFImage(name: "animation")
              .frame(width: 200, height: 200)
              .edgesIgnoringSafeArea(.all)
              .offset(x: 0,y: 850)
              .scaleEffect(CGSize(width: 0.06, height: 0.06))
            // Move the GIF up by 50 points
            
            // Other content
            Text("Grasp your Feelings, Heighten your Awareness")
              .font(.largeTitle)
              .foregroundColor(.customColor)
              .offset(x: 0,y: -85)
              .font(Font.custom("SFProRounded-Bold", size: 16))
              .fontWeight(.semibold)
          }
            
            VStack {
                
                
            }
            .padding()
        }
    }
}

#Preview {
    splash_page()
}
