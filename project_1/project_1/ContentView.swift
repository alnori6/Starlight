//
//  ContentView.swift
//  project_1
//
//  Created by Noori on 29/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
            
            VStack{
                Text("What Happened ?")
                
                    .font(.custom("SFProRounded", size: 20))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 500)
                //Spacer(minLength: -1000)
                   
                
                
            }
            
           
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
