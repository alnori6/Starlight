//
//  SplashPage.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 05/04/1446 AH.
//

import SwiftUI


extension Color {
    static let customColor = Color(red: 63 / 255, green: 75 / 255, blue: 127 / 255)
}

struct SplashPage: View {
    @State var isActive: Bool = false
    var body: some View {
        
            ZStack {
                if self.isActive {
                   // ContentOhoud()
                    ContentView()
                } else {
                    
//                    Image("background2")
//                        .resizable()
//                        .scaledToFill()
//                        .edgesIgnoringSafeArea(.all)
//                    
                    
                    GIFImage(name: "animation")
                        .frame(width: 200, height: 200)
                        .edgesIgnoringSafeArea(.all)
                        .offset(x: 0,y: 850)
                        .scaleEffect(CGSize(width: 0.06, height: 0.06))
                    // Move the GIF up by 50 points
                    
                    // Other content
                    Text("Heart Minds")
                        .font(.custom("SFProRounded-Bold", size: 25))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                        .font(.largeTitle)
                        .offset(x: 0,y: -85)
                        .fontWeight(.semibold)
                    
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
}


#Preview {
    SplashPage().environmentObject(AudioManager())
}
