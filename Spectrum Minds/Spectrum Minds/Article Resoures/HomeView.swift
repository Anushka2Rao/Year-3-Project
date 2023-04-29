//
//  HomeView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 18/02/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var favManager = FavManager()
    var body: some View {


        NavigationView {
            
            ScrollView {
                ResourceListView(maincontent: ArticleResource.productList)
                    .environmentObject(favManager)
                
            }

            .navigationTitle("Spectrum Minds")
            
            .toolbar {
                NavigationLink{
                    FavouritesView(recipes: ArticleResource.productList)
                        .environmentObject(favManager)
                } label: {
                    FavButton(numberOfFav: favManager.products.count)
                }
                
                
            }
            .navigationViewStyle(.stack)
            
        }
        
        
    
}
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
    
    
    
}

