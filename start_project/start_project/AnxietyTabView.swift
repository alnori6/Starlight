//
//  AnxietyTabView.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 05/04/1446 AH.
//

import SwiftUI

struct AnxietyTabView: View{
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedChoice: String?
    var body: some View {
        ZStack {
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            VStack {
                Text("I Feel Anxious")
                    .font(.custom("SFProRounded-Bold", size: 26))
                    .foregroundColor(Color(red: 0.247, green: 0.294, blue: 0.498))
                    .offset(x: -60, y: -60)
                    .padding()
                
                Image("sit_grumpy")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 157.47, height: 111.54)
                    .offset(x: -60, y: -60)
            }
            
            VStack {
                Text("What Happened?")
                    .font(.custom("SFProRounded-Bold", size: 40))
                    .foregroundColor(Color.white)
                    .offset(CGSize(width: 10, height: -90))
            }
            .padding(.bottom, 320)
           
            VStack {
                Spacer()
                    .padding(.bottom, 21.0)
                Button(action: {
                    selectedChoice = "Relationship"
                    print("Relationship Button Pressed")
                }) {
                    Text("Relationship")
                        .font(.custom("SFProRounded-Bold", size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(selectedChoice == "Relationship" ? Color.gray.opacity(1) : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }
                
                
                Button(action: {
                    selectedChoice = "Work"
                    print("Work Button Pressed")
                }) {
                    Text("Work")
                        .font(.custom("SFProRounded-Bold", size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(selectedChoice == "Work" ? Color.gray.opacity(1) : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }
                
                Button(action: {
                    selectedChoice = "Study"
                    print("Study Button Pressed")
                }) {
                    Text("Study")
                        .font(.custom("SFProRounded-Bold", size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(selectedChoice == "Study" ? Color.gray.opacity(1) : Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }
                
                Spacer()
                NavigationLink(destination: AnxietyEmotion()) {
                    Image("next")
                        //.padding([.top, .trailing])
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .shadow(radius: 5)
//                       .padding(.leading, 300)
//                       .padding(.trailing, 30)
                       
                }.padding(.leading, 320)
                    .padding(.top, 70)
                    .padding(.bottom, -30)
                
            }
            .padding(.top, 270)
            .padding(90)
            .padding(.bottom, 50)
        }
        // .navigationBarBackButtonHidden(true)
    }
}



#Preview {
    ContentView().environmentObject(AudioManager())
}
