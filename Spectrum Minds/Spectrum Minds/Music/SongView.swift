//
//  SongView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 28/02/2023.
//

import SwiftUI

struct SongView: View {
    @StateObject var listenmusicVM: MusicViewModel
    @State private var showPlayer = false
    var body: some View {
        VStack(spacing: 0){
            Image(listenmusicVM.listenmusic.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 2)
            
            ZStack{
                
                VStack(alignment: .leading, spacing: 24) {
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Music Duration")
                        
                        Text("8 Minutes and 5 Seconds")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .foregroundColor(.secondary)
                    
                    
                    Text(listenmusicVM.listenmusic.title)
                        .font(.title)
                        .foregroundColor(.primary)
                    
                    Text(listenmusicVM.listenmusic.discription)
                        .foregroundColor(.primary)
                    
                    Button{
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0, green: 0, blue: 0.5))
                            .cornerRadius(20)
                    }
                    
                    Spacer()
                        
                }
                
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 1 / 2)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(listenmusicVM: listenmusicVM)
        }
    }
}

struct SongView_Previews: PreviewProvider {
    static let listenmusicVM = MusicViewModel(listenmusic: ListenMusic.data[0])
    static var previews: some View {
        SongView(listenmusicVM: listenmusicVM)
            .environmentObject(AudioManager())
    }
}
