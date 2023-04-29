//
//  TabBar.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 18/02/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .foregroundColor(.black)
                }
            MusicView()
                .tabItem{
                    Label("Music", systemImage: "music.note.list")
                }
            DiaryView()
                .tabItem{
                    Label("Diary", systemImage: "text.book.closed.fill")
                }
            
        }
    
        
    }
    
    struct TabBar_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
}
