//
//  ContentView.swift
//  start_project
//
//  Created by Noori on 01/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                
                Image("background2")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
                
            VStack{
                Text("Calm")
                    .font(.largeTitle)
                    .font(.custom("SFProRounded", size: 30))
               // .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 0.9882352941176471, blue: 0.9686274509803922))
                    .multilineTextAlignment(.center)
                    .offset( y: -5)
                
                
        ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 333, height: 299)
                        .offset(x: -1, y: 80)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.9215686274509803, green: 0.8980392156862745, blue: 0.9019607843137255)/*@END_MENU_TOKEN@*/)
                        .padding()
                    
            Image("small_happy")
                
                .offset(x: -1, y: 10)
             
            Text("Is a state of tranquility and peace, free from stress and anxiety. It fosters clear thinking and emotional balance, enhancing well-being and focus. ")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                .multilineTextAlignment(.center)
                .offset(x: -1, y: 130)
                .padding(.horizontal, 40)
            
                    }
                
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 333, height: 125)
                        .offset(x: -1, y: 55)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.9215686274509803, green: 0.8980392156862745, blue: 0.9019607843137255)/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Text("Ways to make your life more pleasurable: ")
                    
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                        .multilineTextAlignment(.center)
                        .offset(x: -1, y: 15)
                        .padding(.horizontal, 30)
                    
                HStack{
                          Image("Path")
                          .offset(x: 0, y: 50)
                          Text("listen to music")
                          .font(.system(size: 14))
                          .fontWeight(.medium)
                          .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                          .multilineTextAlignment(.leading)
                           .offset(x:0, y: 50)
            
                    Image("Path")
                    .offset(x: 5, y: 50)
                    
                    Text("read a book")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                    .multilineTextAlignment(.leading)
                     .offset(x: 5, y: 50)
            
                        
                    }
                    HStack{
                        
                        Image("Path")
                        .offset(x: 0, y: 70)
                        Text("go for a walk")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                        .multilineTextAlignment(.leading)
                         .offset(x: -0, y: 70)
          
                  Image("Path")
                  .offset(x: 5, y: 70)
                  
                  Text("call a friend")
                  .font(.system(size: 16))
                  .fontWeight(.medium)
                  .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                  .multilineTextAlignment(.leading)
                   .offset(x: 5, y: 70)
          
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                    }

                   
                }
                    
                }
            }



#Preview {
    ContentView()
}
