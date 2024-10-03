//
//  Home Page.swift
//  start_project
//
//  Created by Shaden Alhumood on 29/03/1446 AH.
//

import SwiftUI

struct Home_Page: View {
    var body: some View {
        
        ZStack{
           
            Image("Home page")
//                .resizable()
                .ignoresSafeArea()

            
            VStack{
                Text("Quoates")
                    .font(.largeTitle)
                    .font(Font.custom("SFProRounded-Bold", size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 0.9882352941176471, blue: 0.9686274509803922))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: 60)
                
                HStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 23)
                            .frame(width: 333, height: 299)
                            .offset(x: 30, y: 40)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6588235294117647, green: 0.5764705882352941, blue: 0.7254901960784313)/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Text(" To be yourself a world that is constantly trying to make you something else is the greatest accomplishment ")
                            .foregroundColor(Color(red: 1.0, green: 0.9882352941176471, blue: 0.9686274509803922))
                            .multilineTextAlignment(.center)
                            .offset(x: 30, y: 40)
                            .frame(width: 333, height: 299)
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 23)
                            .frame(width: 333, height: 299)
                            .offset(x: 0 , y: 40)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6588235294117647, green: 0.5764705882352941, blue: 0.7254901960784313)/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Text(" To be yourself a world that is constantly trying to make you something else is the greatest accomplishment ")
                            .foregroundColor(Color(red: 1.0, green: 0.9882352941176471, blue: 0.9686274509803922))
                            .multilineTextAlignment(.center)
                            .offset(x: 0, y: 40)
                            .frame(width: 333, height: 299)
                        
                        Text(" Ralph Waldo Emerson")
                            .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                            .multilineTextAlignment(.center)
                            .offset(x: 0, y: 120)
                            .frame(width: 333, height: 299)
                        
                    }
                    
                    RoundedRectangle(cornerRadius: 23)
                        .frame(width: 333, height: 299)
                        .offset(x: -30, y: 40)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6588235294117647, green: 0.5764705882352941, blue: 0.7254901960784313)/*@END_MENU_TOKEN@*/)
                        .padding()
                   }
                HStack{
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .offset(x: 35, y: 10)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.5686274509803921, green: 0.3686274509803922, blue: 0.396078431372549)/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .offset(x: 0, y: 10)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.37254901960784315, green: 0.24705882352941178, blue: 0.5098039215686274)/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .offset(x: -35, y: 10)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.5686274509803921, green: 0.3686274509803922, blue: 0.396078431372549)/*@END_MENU_TOKEN@*/)
                        .padding()
                }
                
                
                Text("Your Emotion")
                    .font(.largeTitle)
                    .font(Font.custom("SFProRounded-Bold", size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 0.9882352941176471, blue: 0.9686274509803922))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: 20)
                
                ZStack{
                  
                 Rectangle()
                        .frame(width: 393, height: 112)
                        .offset(x: 0, y: -5)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6588235294117647, green: 0.5764705882352941, blue: 0.7254901960784313)/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Image("small_calm")
                        .offset(x: -45, y: -5)
                        .padding()
                                        
                    Image("small_sad")
                        .offset(x: 45, y: -5)
                        .padding()
                    
                    Image("small_angry")
                        .offset(x: 130, y: -5)
                        .padding()
                    
                    Image("small_grumpy")
                        .offset(x: -130, y: -5)
                        .padding()
                   
                }
                
                
                HStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 7)
                            .frame(width: 50, height: 50)
                            .offset(x: 30, y: -15)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745)/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Image("podcastImage")
                            .offset(x: 30, y: -15)
                        
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 7)
                            .frame(width: 50, height: 50)
                            .offset(x: 0, y: -15)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745)/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Image("youtubeImage")
                            .offset(x: 0, y: -15)
                        
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 7)
                            .frame(width: 50, height: 50)
                            .offset(x: -30, y: -15)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745)/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Image("safariImage")
                            .offset(x: -30, y: -15)
                        
                    }
                    
                    
                    
                }
                
}
}
}
}

#Preview {
    Home_Page()
}
