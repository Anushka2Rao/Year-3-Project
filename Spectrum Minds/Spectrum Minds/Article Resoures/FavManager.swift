//
//  FavManager.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import Foundation

class FavManager: ObservableObject {
    @Published private(set) var products: [ArticleResource] = []
    
    func addToFav(articleresource: ArticleResource) {
        products.append(articleresource)
        
    }
    func removeFromFav(articleresource: ArticleResource){
        products = products.filter { $0.id != articleresource.id}
    }
}
