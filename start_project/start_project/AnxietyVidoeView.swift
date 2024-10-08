//
//  AnxietyVidoeView.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 03/04/1446 AH.
//

import SwiftUI
import AVKit

struct AnxietyVidoeView: View {
    
    let url = Bundle.main.url(forResource: "anxietyFeeling", withExtension:"MP4")
    
    var body: some View {
        ZStack{
             
             
              //MARK: Background Image
             Image("background2")
                 .resizable()
                 .scaledToFill()
                 .frame(width: UIScreen.main.bounds.width)
                 .ignoresSafeArea()
             
             // MARK: Blur view
             Rectangle()
                 .background(.thickMaterial)
             // .opacity(0.25)
                 .ignoresSafeArea()
             VStack(spacing: 32){
 //                HStack {
 //                    Button {
 //
 //                        dismiss()
 //
 //                    }label: {
 //                        Image(systemName:"xmark.circle.fill")
 //                            .font(.system(size: 36))
 //                            .foregroundColor(.white)
 //                            .offset(x: 20, y: -200)
 //
 //                    }
 //                    Spacer()
 //                }
                 
                 VStack(alignment:.leading){
                     
                     if url != nil{
                         VideoPlayer(player: AVPlayer(url: url!)).frame(height: 300)
                     }
                 }
             }
             
             
             
         }
    }
}

#Preview {
    AnxietyVidoeView().environmentObject(AudioManager())
}
