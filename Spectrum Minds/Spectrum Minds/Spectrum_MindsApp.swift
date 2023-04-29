//
//  Spectrum_MindsApp.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 18/02/2023.
//

import SwiftUI

@main
struct Spectrum_MindsApp: App {
    @StateObject var audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
