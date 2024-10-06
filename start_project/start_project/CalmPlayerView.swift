//
//  CalmPlayerView.swift
//  start_project
//
//  Created by Wejdan Alghamdi on 03/04/1446 AH.
//

import SwiftUI

struct CalmPlayerView: View {
    
    @EnvironmentObject var audioManeger: AudioManager
    //var calmVM: CalmViewModel
    var isPreview: Bool = false
    @State private var value: Double = 0.0
    @State private var isEditing: Bool = false
    @Environment(\.dismiss) var dismiss
    
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
                
                ZStack {
                    
                    // MARK: Background Image
                    Image("background2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width)
                        .ignoresSafeArea()
                    
                    // MARK: Blur view
                    Rectangle()
                        .background(.thickMaterial)
                    // .opacity(0.25)
                        .ignoresSafeArea()
                    
                    
                    VStack(spacing: 32){
                        
                        // MARK: Dismiss Button
                        
                        HStack {
                            Button {
                                audioManeger.stop()
                                dismiss()
                            }label: {
                                Image(systemName:"xmark.circle.fill")
                                    .font(.system(size: 36))
                                    .foregroundColor(.white)
                                
                            }
                            Spacer()
                        }
                        // MARK: Title
                        Text("Stay Calm")
                            .font(Font.custom("SFProRounded-Bold", size: 30))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                        Spacer()
                        
                        // MARK: Playback
                            if let player = audioManeger.player {
                            VStack(spacing: 5){
                                
                                // MARK: Playback Timeline
                                Slider(value: $value, in: 0...player.duration){
                                    editing in
                                    print("editing", editing)
                                    isEditing = editing
                                    
                                    if !editing{
                                        player.currentTime = value
                                    }
                                }.accentColor(.white)
                                
                                // MARK: Playback Time
                                HStack{
                                    Text(DateComponentsFormatter.positional.string(from: player.currentTime) ?? "0.00")
                                    
                                    Spacer()
                                    
                                    Text(DateComponentsFormatter.positional.string(from: player.duration - player.currentTime) ?? "0.00")
                                    
                                }
                                .font(.caption)
                                .foregroundColor(.white)
                            }
                            
                            // MARK: Playback Controls
                            HStack{
                                
                                // MARK: Backward Button
                                
                                PlaybackButtonControl(systemName: "gobackward.10"){
                                    player.currentTime -= 10
                                    
                                }
                                Spacer()
                                
                                // MARK: Play/Pause Button
                                
                                PlaybackButtonControl(systemName: audioManeger.isPlaying ? "pause.circle.fill" : "play.circle.fill", fontSize: 44){
                                    audioManeger.playPause()
                                    
                            }
                                Spacer()
                                
                                // MARK: Forward Button
                                PlaybackButtonControl(systemName: "goforward.10"){
                                    player.currentTime += 10
                                }
                                
                            }.padding(40)
                        }
                        
                    }.padding(20)
                    
                }
                .onAppear{
                    //            AudioManager.shared.startPlayer(track: sadVM.sad.track, isPreview: isPreview)
                    audioManeger.startPlayer(track: "calmFeeling", isPreview: isPreview)
                }
                .onReceive(timer){ _ in
                    guard let player = audioManeger.player, !isEditing else {return}
                    value = player.currentTime
                }
            }
    }


#Preview {
    CalmPlayerView()
        .environmentObject(AudioManager())
}
