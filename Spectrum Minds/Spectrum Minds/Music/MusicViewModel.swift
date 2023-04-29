//
//  MusicViewModel.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 28/02/2023.
//

import Foundation

final class MusicViewModel: ObservableObject {
    private(set) var listenmusic: ListenMusic
    
    init(listenmusic: ListenMusic) {
        self.listenmusic = listenmusic
    }
}

struct ListenMusic: Identifiable {
    let id = UUID()
    let title: String
    let discription: String
    let duration: TimeInterval
    let track: String
    let image: String

    
    static let data = [ ListenMusic(title: "Weightless - Marconi Union", discription: "This is well known music by Marconi Union known as Weightless. In an article published by MindLab Internation in the UK, it was found out that listening to this music resulted in 65% reduction in the participants overall anxiety.", duration: 485, track: "64kpbs", image: "ImageXX"
    ),
                        // Ignore the below line of code please
                        ListenMusic(title: "nj", discription: "fr", duration: 60, track: "music 2", image: "Image 2")] 
                                       
}
    

