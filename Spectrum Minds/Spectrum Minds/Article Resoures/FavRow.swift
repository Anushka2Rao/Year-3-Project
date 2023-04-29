//
//  FavRow.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import SwiftUI

struct FavRow: View {
    @EnvironmentObject var favManager: FavManager
    var articleresource: ArticleResource
    var body: some View {
        HStack(spacing: 20) {
            Image(articleresource.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(articleresource.name)
                    .foregroundColor(.primary)
                    .bold()
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    favManager.removeFromFav(articleresource: articleresource)
            }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FavRow_Previews: PreviewProvider {
    static var previews: some View {
        FavRow(articleresource: ArticleResource.productList[5])
            .environmentObject(FavManager())
    }
}
