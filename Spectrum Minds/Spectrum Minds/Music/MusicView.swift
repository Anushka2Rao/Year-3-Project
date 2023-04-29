//
//  MusicView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 18/02/2023.
//

import SwiftUI

struct MusicView: View {
    
    var body: some View {
        
        SongView(listenmusicVM: MusicViewModel(listenmusic: ListenMusic.data[0]))
    
    }
}

struct MusicView_Previews: PreviewProvider {
    
    static var previews: some View {
        MusicView()
            .environmentObject(AudioManager())
    }
}
