import SwiftUI

struct CalmView: View{
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
                Spacer()
                    .padding(.bottom, 21.0)
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
                Spacer()
                NavigationLink(destination: Emotion_1()) {
                    Image("next")
                        //.padding([.top, .trailing])
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                       .padding(.leading, 300)
                       .padding(.trailing, 30)
                       
                }
                
            }
            .padding(.top, 270)
            .padding(90)
        }
        // .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContentOhoud() // Previewing ViewSad instead of ContentView
}
