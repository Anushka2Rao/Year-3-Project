//
//  PlayBackButton.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 28/02/2023.
//

import SwiftUI

struct PlayBackButton: View {
    var systemName: String = "play"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }

    }
}

struct PlayBackButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayBackButton(action: {})
            .preferredColorScheme(.dark)
    }
}
