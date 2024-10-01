import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            // Background covering the full screen
            Image("background1")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                TabView(selection: $selectedTab) {
                    EmotionView(emotion: "Sad", imageName: "sadCloud", emotionImageNames: ["", "", "", ""])
                        .tag(0) // Sad first

                    EmotionView(emotion: "Angry", imageName: "angryCloud", emotionImageNames: ["", "", "", ""])
                        .tag(1) // Angry second

                    EmotionView(emotion: "Anxious", imageName: "anxiousCloud", emotionImageNames: ["", "", "", ""])
                        .tag(2) // Anxious third

                    EmotionView(emotion: "Calm", imageName: "calmCloud2", emotionImageNames: ["", "", "", ""])
                        .tag(3) // Calm last
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                // Customization of the tab bar
                CustomTabBar(selectedTab: $selectedTab)
                    .padding(.bottom, 10) // Adds spacing at the bottom
            }
        }
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarItem(imageName: "smolSad", index: 0, selectedTab: $selectedTab) // Sad first
            TabBarItem(imageName: "smolAngry", index: 1, selectedTab: $selectedTab) // Angry second
            TabBarItem(imageName: "smolAnx", index: 2, selectedTab: $selectedTab) // Anxious third
            TabBarItem(imageName: "smolCalm", index: 3, selectedTab: $selectedTab) // Calm last
        }
        .padding()
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
                .frame(width: 80, height: 50) // Change the size here
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
    var emotionImageNames: [String]
    
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

            Spacer() // Pushes the button to the bottom
            
            // Next Button
            NavigationLink(destination: DestinationView(emotion: emotion)) {
                Image("next")
                   
                    .padding()
                    .frame(maxWidth: .infinity) // Makes the button full width
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.leading, 300) // Adds horizontal padding
            }
            .padding(.bottom, 50) // Adds spacing above the button
        }
        .padding()
    }
}

struct DestinationView: View {
    var emotion: String
    
    var body: some View {
        VStack {
            Text("You have selected \(emotion)!")
                .font(.largeTitle)
                .padding()
            // Add more content or functionality here
            Spacer()
        }
        .navigationBarTitle("Emotion Detail", displayMode: .inline)
    }
}

#Preview {
    ContentView()
}
