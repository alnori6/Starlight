import SwiftUI

struct ContentOhoud: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("background1")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                
                VStack {
                    TabView(selection: $selectedTab) {
                        EmotionView(emotion: "Sad", imageName: "sit_sad", destination: AnyView(ViewSad()), selectedTab: $selectedTab)
                            .tag(0)

                        EmotionView(emotion: "Angry", imageName: "sit_angry", destination: AnyView(ViewAngry()), selectedTab: $selectedTab)
                            .tag(1)

                        EmotionView(emotion: "Anxious", imageName: "sit_grumpy", destination: AnyView(ViewAnxious()), selectedTab: $selectedTab)
                            .tag(2)

                        EmotionView(emotion: "Calm", imageName: "sit_smile", destination: AnyView(ViewCalm()), selectedTab: $selectedTab)
                            .tag(3)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    
//                        .padding(.bottom, -50)
                }
            } // zstack
        }
    }
    
    
    
    
    
}

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarItem(imageName: "smolSad", index: 0, selectedTab: $selectedTab)
            TabBarItem(imageName: "smolAngry", index: 1, selectedTab: $selectedTab)
            TabBarItem(imageName: "smolAnx", index: 2, selectedTab: $selectedTab)
            TabBarItem(imageName: "smolCalm", index: 3, selectedTab: $selectedTab)
        }
//        .padding(.bottom, 190.0)
        .background(Color.clear)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 5)
        
    }
    
    
}

struct TabBarItem: View {
    var imageName: String
    var index: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = index
        }) {
            Image(imageName)
                .resizable()
                .frame(width: 80, height: 60)
//                .padding([.top, .trailing], 10)
                .background(selectedTab == index ? Color.gray.opacity(0.3) : Color.clear)
                .cornerRadius(10)
                .padding(7) //spaces between clouds
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct EmotionView: View {
    var emotion: String
    var imageName: String
    var destination: AnyView
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            Text("How Do You Feel!")
                .font(.custom("SFProRounded", size: 40))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top , 5)
                
                
            
            Text("I feel \(emotion.lowercased())")
                .font(.custom("SFProRounded", size: 34))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color("textColor"))
                .padding(.leading, -120)
                .padding(.top , 50)

            
            Image(imageName)
                .resizable()
                .frame(width: 250, height: 180)
                .padding(.leading, -110)


            Spacer().frame(height: 70)
            //this is all the clouds emotions
            CustomTabBar(selectedTab: $selectedTab)
            


            HStack {
                
                NavigationLink(destination: destination) {
                    Image("next")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(30)
                        .shadow(radius: 5)
                }.padding(.leading, 320)
                    .padding(.top, 150)
                    .padding(.bottom, -90)
                    
            }//hstack for the navigator
            
            
        }

    }
}

#Preview {
    ContentOhoud()
}
