import SwiftUI

struct ViewAnxious: View{
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
            Image("next")
            .resizable()
            .frame(width: 18.5, height: 17)
            .foregroundColor(.white)
            .padding()
            .background(Color.clear)
            .cornerRadius(10)
            .offset(x: 140, y: 230)
            }
        }
        // .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContentView() // Previewing ViewSad instead of ContentView
}
