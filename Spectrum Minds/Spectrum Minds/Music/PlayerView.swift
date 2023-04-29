//
//  PlayerView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 28/02/2023.
//

import SwiftUI

struct PlayerView: View {
    @EnvironmentObject var audioManager: AudioManager
    var listenmusicVM: MusicViewModel
    var isPreview: Bool = false
    @State private var value: Double = 0.0
    @State private var isEditing: Bool = false
    @Environment(\.dismiss) var dismiss
    
    let timer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        ZStack{
            Image(listenmusicVM.listenmusic.image)
                .resizable()
                .scaledToFill()
                .frame(width:UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack(spacing:32){
                
                
                HStack{
                    Button{
                        audioManager.stop()
                        dismiss()
                    }label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                                    
                Spacer()
        
                
                if let player = audioManager.player {
                    VStack(spacing: 5){
                        Slider(value: $value, in: 0...player.duration) { editing in
                            
                            print("editing", editing)
                            isEditing = editing
                            
                            if !editing {
                                player.currentTime = value
                            }
                            
                        }
                        .accentColor(.white)
                        
                        HStack{
                            Text(DateComponentsFormatter.positional.string(from: player.currentTime) ?? "0:00")
                            Spacer()
                            Text(DateComponentsFormatter.positional.string(from: player.duration - player.currentTime) ?? "8:05")
                        }
                        .font(.caption)
                        .foregroundColor(.white)
                    }
                    
                    //Mark: Playback Buttons
                    HStack{
                        
                        let color: Color = audioManager.isLooping ? .teal : .white
                        PlayBackButton(systemName: "repeat", color: color) {
                            audioManager.toggleLoop()
                        }
                        Spacer()
                        
                        PlayBackButton(systemName: "gobackward.10") {
                            player.currentTime -= 10
                            
                        }
                        Spacer()
                        
                        PlayBackButton(systemName: audioManager.isPlaying ? "pause.circle.fill" : "play.circle.fill" , fontSize: 44) {
                            audioManager.playPause()
                        }
                        
                        Spacer()
                        
                        PlayBackButton(systemName: "goforward.10") {
                            player.currentTime += 10
                            
                        }
                        Spacer()
                        
                        PlayBackButton(systemName: "stop.fill") {
                            audioManager.stop()
                            dismiss()
                            
                        }
                    }
                }
                
               }
            .padding(20)
        }
        
        .onAppear {
      //      AudioManager.shared.startPlayer(track: listenmusicVM.listenmusic.track, isPreview: isPreview)
            audioManager.startPlayer(track: listenmusicVM.listenmusic.track, isPreview: isPreview)
        }
        
        .onReceive(timer) { _ in
            guard let player = audioManager.player, !isEditing else { return }
            value = player.currentTime
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static let listenmusicVM = MusicViewModel(listenmusic: ListenMusic.data[0])
    
    static var previews: some View {
        PlayerView(listenmusicVM: listenmusicVM, isPreview: true)
            .environmentObject(AudioManager())
    }
}
