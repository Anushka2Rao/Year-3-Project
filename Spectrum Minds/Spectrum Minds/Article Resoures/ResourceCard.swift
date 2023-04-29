//
//  ResourceCard.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import SwiftUI

struct ResourceCard: View {
    @EnvironmentObject var favManager: FavManager
    var articleresource: ArticleResource
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Image(articleresource.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                    
                
                
                HStack {
                    VStack(spacing: 15) {
                    
                        Text(articleresource.name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        

                    
                        Text(articleresource.discription)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                        
                    }
                    .layoutPriority(100)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .multilineTextAlignment(.center)
                    
                    Spacer()
                }.padding()
                
            }
        .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1))
            .padding()

            
            Button {
                favManager.addToFav(articleresource: articleresource)
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                        .frame(width: 35, height: 35)
                    .padding(30)
                    .foregroundColor(Color(red:220/255, green:20/255, blue:60/255))
                    .backgroundStyle(.black)
                    
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ResourceCard(articleresource: ArticleResource.productList[0])
            .environmentObject(FavManager())
            
    }
}
