import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background covering the full screen
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

                        // Updated destination to the new CalmView
                        EmotionView(emotion: "Calm", imageName: "sit_smile", destination: AnyView(CalmView()))
                            .tag(3)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    // Customization of the tab bar
                    CustomTabBar(selectedTab: $selectedTab)
                        .padding(.bottom, 10) // Adds spacing at the bottom
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
    var destination: AnyView // Use AnyView to wrap the destination
    
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
            NavigationLink(destination: destination) {
                Image("next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.leading, 300)
            }
            .padding(.bottom, 50) // Adds spacing above the button
        }
        .padding()
    }
}


struct ViewSad: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
         
    
            
            VStack {
                Text("I Feel Sad")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.247, green: 0.294, blue: 0.498))
                    .offset(x: -60, y: -60)
                    .padding()
                
                Image("sit_sad")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 157.47, height: 111.54)
                    .offset(x: -60, y: -60)
            }
            
            VStack {
                Text("What Happened?")
                    .font(.custom("SFProRounded", size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .offset(CGSize(width: 10, height: -90))
            }
            .padding(.bottom, 320)
            
            VStack {
                Button(action: {
                    print("Relationship Button Pressed")
                }) {
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
                }) {
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
                }) {
                    Text("Study")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }
              
                
            }
            .padding(.top, 270)
            .padding(90)
            
            Button(action: {
            presentationMode.wrappedValue.dismiss()
            }) {
            Image("back")
            .resizable()
            .frame(width: 18.5, height: 17)
            .foregroundColor(.white)
            .padding()
            .background(Color.clear)
            .cornerRadius(10)
            .offset(x: 140, y: 230)
            }
            .padding(.top, 40) // Adjust vertical position
            .padding(.leading, 20) // Adjust horizontal position
            
            
            
        }
   // .navigationBarBackButtonHidden(true)
    }
}

//  ViewAngry code here
struct ViewAngry: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            VStack {
                Text("I Feel Angry")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.247, green: 0.294, blue: 0.498))
                    .offset(x: -60, y: -60)
                    .padding()
                
                Image("sit_angry")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 157.47, height: 111.54)
                    .offset(x: -60, y: -60)
            }
            
            VStack {
                Text("What Happened?")
                    .font(.custom("SFProRounded", size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .offset(CGSize(width: 10, height: -90))
            }
            .padding(.bottom, 320)
            
            VStack {
                Button(action: {
                    print("Relationship Button Pressed")
                }) {
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
                }) {
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
                }) {
                    Text("Study")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }
            }
            .padding(.top, 270)
            .padding(90)
            
            Button(action: {
            presentationMode.wrappedValue.dismiss()
            }) {
            Image("back")
            .resizable()
            .frame(width: 18.5, height: 17)
            .foregroundColor(.white)
            .padding()
            .background(Color.clear)
            .cornerRadius(10)
            .offset(x: 140, y: 230)
            }
        }
    }
}

// New ViewAnxious code here
struct ViewAnxious: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            VStack {
                Text("I Feel Anxious")
                    .fontWeight(.bold)
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
                    .font(.custom("SFProRounded", size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .offset(CGSize(width: 10, height: -90))
            }
            .padding(.bottom, 320)
            
            VStack {
                Button(action: {
                    print("Relationship Button Pressed")
                }) {
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
                }) {
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
                }) {
                    Text("Study")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }
            }
            .padding(.top, 270)
            .padding(90)
            
            Button(action: {
            presentationMode.wrappedValue.dismiss()
            }) {
            Image("back")
            .resizable()
            .frame(width: 18.5, height: 17)
            .foregroundColor(.white)
            .padding()
            .background(Color.clear)
            .cornerRadius(10)
            .offset(x: 140, y: 230)
            }
        }
    }
}

// New CalmView code here
struct CalmView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            VStack {
                Text("I Feel Calm")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.247, green: 0.294, blue: 0.498))
                    .offset(x: -60, y: -60)
                    .padding()
                
                Image("sit_smile")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 157.47, height: 111.54)
                    .offset(x: -60, y: -60)
            }
            
            VStack {
                Text("What Happened?")
                    .font(.custom("SFProRounded", size: 36))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .offset(CGSize(width: 10, height: -90))
            }
            .padding(.bottom, 320)
            
            VStack {
                Button(action: {
                    print("Relationship Button Pressed")
                }) {
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
                }) {
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
                }) {
                    Text("Study")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }
            }
            .padding(.top, 270)
            .padding(90)
            
            Button(action: {
            presentationMode.wrappedValue.dismiss()
            }) {
            Image("back")
            .resizable()
            .frame(width: 18.5, height: 17)
            .foregroundColor(.white)
            .padding()
            .background(Color.clear)
            .cornerRadius(10)
            .offset(x: 140, y: 230)
            }
        }
    }
}

#Preview {
    ContentView()
}
