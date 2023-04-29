//
//  FavouritesView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import SwiftUI

struct FavouritesView: View {
    var recipes: [ArticleResource]
    @EnvironmentObject var favManager: FavManager
    var body: some View {
        ScrollView{
            if (favManager.products.count != 0) {
                ForEach(favManager.products, id: \.id) { ArticleResource in
                    NavigationLink(destination: ResourceView(articleresource: ArticleResource)) {
                        FavRow(articleresource: ArticleResource)
                    }
                    
                    
            
                }
                
                
            } else {
                Text("No favourites added")
            }
           
        }
        .navigationTitle(Text("My Favourites"))
        .padding(.top)
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView(recipes: ArticleResource.productList)
            .environmentObject(FavManager())
            
        
    }
}

