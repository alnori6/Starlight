//
//  AnxietyView.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 03/04/1446 AH.
//

import SwiftUI

struct AnxietyView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        NavigationView{
            ZStack {
                
                Image("background2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .ignoresSafeArea()
                    .navigationBarItems(
                        trailing: NavigationLink( destination: HomePage(), label: {Image(systemName: "homekit")
                        }))
                
                
                VStack{
                    
                    Text("Anxiety")
                        .font(Font.custom("SFProRounded-Bold", size: 40))
                        .font(.title)
                        .foregroundColor(Color.white)
                    // .padding(.bottom, 144.0)
                    Spacer()
                }
                .padding(.top, 122.0)
                
                VStack(spacing: 50){
                    Text("This Video might also help you gain a deeper understanding")
                        .font(Font.custom("SFProRounded-Bold", size: 16))
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: AnxietyVidoeView()){
                        /*Button(action:{showVideoPlayer = true})*/ Image("youtubimage_1").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 65)
                        }
                    }
                }
                .ignoresSafeArea()
                // .fullScreenCover(isPresented: $showVideoPlayer){
                //AngerVideoView()
                //}
            }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    AnxietyView().environmentObject(AudioManager())
}
