//
//  ResourceListView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import SwiftUI

struct ResourceListView: View {
    var maincontent: [ArticleResource]
    
    var body: some View {
        VStack {
            HStack {
                Text("Resources for your Mental Health")
                    .font(.headline)
                    .bold()
                    .fontWeight(.medium)
                    .opacity(0.7)
                
            }
            
            ScrollView{
                ForEach(maincontent) { product in
                    NavigationLink(destination: ResourceView(articleresource: product)) {
                        ResourceCard(articleresource: product)
                    }
                }
            }
            .padding(.top)
        }
    }
}

struct ResourceListView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ResourceListView(maincontent: ArticleResource.productList)
        }
    }
}

