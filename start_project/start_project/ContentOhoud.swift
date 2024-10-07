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
                        EmotionView(emotion: "Sad", imageName: "sit_sad", destination: AnyView(ViewSad()))
                            .tag(0)

                        EmotionView(emotion: "Angry", imageName: "sit_angry", destination: AnyView(ViewAngry()))
                            .tag(1)

                        EmotionView(emotion: "Anxious", imageName: "sit_grumpy", destination: AnyView(ViewAnxious()))
                            .tag(2)

                        EmotionView(emotion: "Calm", imageName: "sit_smile", destination: AnyView(CalmView()))
                            .tag(3)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    CustomTabBar(selectedTab: $selectedTab)
                        .padding(.bottom, 10)
                }
            }
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
        .padding(.bottom, 100.0)
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
                .frame(width: 80, height: 50)
                .padding([.bottom, .trailing], 9)
                .background(selectedTab == index ? Color.gray.opacity(0.3) : Color.clear)
                .cornerRadius(10)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct EmotionView: View {
    var emotion: String
    var imageName: String
    var destination: AnyView
    
    var body: some View {
        VStack {
            Text("How Do You Feel!")
                .font(.custom("SFProRounded", size: 40))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 180.0)
            
            Text("I feel \(emotion.lowercased())")
                .font(.custom("SFProRounded", size: 34))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color(red: 0.247, green: 0.294, blue: 0.498))
                .padding([.top, .trailing], 150)
            
            Image(imageName)
                .resizable()
                .frame(width: 230, height: 180)
                .padding([.top, .trailing], 40)

            Spacer()
            
            NavigationLink(destination: destination) {
                Image("next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.leading, 300)
            }
            .padding(.bottom, 50)
        }
        .padding()
    }
}

#Preview {
    ContentOhoud()
}
