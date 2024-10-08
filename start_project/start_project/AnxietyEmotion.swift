//
//  AnxietyEmotion.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 04/04/1446 AH.
//

import SwiftUI

struct AnxietyEmotion: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
            ZStack {
                
                Image("background2")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
                
                VStack{
                    Text("Anxious")
                        .font(Font.custom("SFProRounded-Bold", size: 40))
                        .font(.title)
                        .foregroundColor(Color.white)
                    //                    .font(.largeTitle)
                    //                    .font(.custom("SFProRounded", size: 30))
                    //                   .font(.system(size: 16))
                    //                    .fontWeight(.bold)
                        .foregroundColor(Color(red: 1.0, green: 0.9882352941176471, blue: 0.9686274509803922))
                        .multilineTextAlignment(.center)
                        .offset( y: -5)
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 333, height: 299)
                            .offset(x: -1, y: 80)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.9215686274509803, green: 0.8980392156862745, blue: 0.9019607843137255)/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Image("small_grumpy")
                        
                            .offset(x: -1, y: 10)
                        
                        Text("Is a complex emotion marked by worry and fear, often stemming from uncertainty about the future. It may disrupt daily life, underscoring the importance of coping strategies and support. ")
                            .font(Font.custom("SFProRounded-bold", size: 16))
                        //                        .font(.system(size: 16))
                        //                        .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                            .multilineTextAlignment(.center)
                            .offset(x: -1, y: 145)
                            .padding(.horizontal, 40)
                        
                    }
                    
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 333, height: 125)
                            .offset(x: -1, y: 55)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.9215686274509803, green: 0.8980392156862745, blue: 0.9019607843137255)/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Text("Ways to make your life more pleasurable: ")
                            .font(Font.custom("SFProRounded-bold", size: 15))
                        
                        //                        .font(.system(size: 14))
                        //                        .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                            .multilineTextAlignment(.center)
                            .offset(x: -1, y: 15)
                            .padding(.horizontal, 30)
                        
                        HStack{
                            Image("Path")
                                .offset(x: 0, y: 50)
                            Text("Listen to music")
                                .font(Font.custom("SFProRounded-bold", size: 14))
                            //                            .font(.system(size: 14))
                            //                            .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                                .multilineTextAlignment(.leading)
                                .offset(x:0, y: 50)
                            
                            Spacer()
                            Image("Path")
                                .offset(x: 5, y: 50)
                            
                            Text("Read a book")
                                .font(Font.custom("SFProRounded-bold", size: 14))
                            //                            .font(.system(size: 16))
                            //                            .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                                .multilineTextAlignment(.leading)
                                .offset(x: 5, y: 50)
                            
                            
                        }.padding(60)
                        HStack{
                            
                            Image("Path")
                                .offset(x: 0, y: 70)
                            Text("Go for a walk")
                                .font(Font.custom("SFProRounded-bold", size: 14))
                            //                            .font(.system(size: 16))
                            //                            .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                                .multilineTextAlignment(.leading)
                                .offset(x: -0, y: 70)
                            
                            Spacer()
                            
                            Image("Path")
                                .offset(x: 5, y: 70)
                            
                            Text("Call a friend")
                                .font(Font.custom("SFProRounded-bold", size: 14))
                            //                            .font(.system(size: 16))
                            //                            .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.24705882352941178, green: 0.29411764705882354, blue: 0.4980392156862745))
                                .multilineTextAlignment(.leading)
                                .offset(x: 5, y: 70)
                            
                        }.padding(60)
                        
                    }
                    ZStack{
                        NavigationLink(destination: AnxietyView()) {
                            Image("next")
                            //.padding([.top, .trailing])
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding(.top, 35)
                                .padding(.bottom, -20)
                                .padding(.leading, 300)
                                .padding(.trailing, 30)
                            
                            
                            
                        }
                    }
                }
                
             }
    }
}

#Preview {
    AnxietyEmotion().environmentObject(AudioManager())
}
