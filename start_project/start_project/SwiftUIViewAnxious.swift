//
//  SwiftUIViewAnxious.swift
//  start_project
//
//  Created by Maram Rabeh  on 28/03/1446 AH.
//

import SwiftUI

struct SwiftUIViewAnxious: View {
    var body: some View {
        ZStack {
            
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
            
            VStack{
                
                
                Text("I Feel Anxious")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745, opacity: 100))
                    .offset(x:-60,y:-60)
                    .padding()
                
                Image("sit_grumpy")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 157.47, height:111.54)
                    .offset(x:-60,y:-60)
            }
            
          
            
            VStack{
                Text("What Happened ?")
                
                    .font(.custom("SFProRounded", size: 36))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .offset(CGSize(width: 10, height: -90))
            }
            .padding(.bottom, 320)
                //Spacer(minLength: -1000)
                
               
                VStack{
                    Button(action: {
                        print("Relationship Button Pressed")
                    }){
                        
                        Text("Relationship")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                            .font(.headline)
                        
                    }
                    Button(action: {
                        print("Work Button Pressed")
                    }){
                        
                        Text("Work")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                            .font(.headline)
                        
                    }
                    
                    Button(action: {
                        print("Study Button Pressed")
                    }){
                        
                        Text("Study")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                            .font(.headline)
                        
                    }
                }.padding(.top,270)
                
                .padding(90)
            }
        }
    }

#Preview{
    SwiftUIViewAnxious()
}
