//
//  FavButton.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import SwiftUI

struct FavButton: View {
    var numberOfFav: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "heart.fill")
                .padding(.top, 5)
                .foregroundColor(Color(red:220/255, green:20/255, blue:60/255))
                
            
            if numberOfFav > 0 {
                Text("\(numberOfFav)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 12, height: 12)
                    .background(.primary)
                    .cornerRadius(50)
            }
        }
    }
}

struct FavButton_Previews: PreviewProvider {
    static var previews: some View {
        FavButton(numberOfFav: 1)
    }
}
