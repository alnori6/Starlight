//
//  SadView.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 03/04/1446 AH.
//

import SwiftUI

struct SadView: View {
    
    @State private var showPlayer = false
    
    var body: some View {
        
        ZStack{
            
            Image("background2")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack{
                
                Text("Sad")
                    .font(Font.custom("SFProRounded-Bold", size: 40))
                    .font(.title)
                    .foregroundColor(Color.white)
                // .padding(.bottom, 144.0)
                Spacer()
            }
            .padding(.top, 122.0)
            
            VStack(spacing: 50){
                Text("Here is a segment of podcast with related insight")
                    .font(Font.custom("SFProRounded-Bold", size: 16))
                    .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                
//                    NavigationLink(destination: PlayerView()){
                    Button(action:{showPlayer = true}) {Image("podcastimage_1").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 65)
                    }
                    
                }
            .ignoresSafeArea()
           // .fullScreenCover(isPresented: $showPlayer){
              //  SadPlayerView(sadVM: sadVM)
            }
        }
        
    }


#Preview {
    SadView().environmentObject(AudioManager())
}
