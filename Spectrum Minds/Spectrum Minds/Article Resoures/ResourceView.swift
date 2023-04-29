//
//  ResourceView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 13/04/2023.
//

import SwiftUI

struct ResourceView: View {

    
    var articleresource: ArticleResource
    
    var body: some View {
        ScrollView {
            
            Text(articleresource.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Image(articleresource.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding()
            
            VStack(spacing: 30) {
            
                HStack(spacing: 30) {
                    
                    Link(articleresource.urlname, destination: URL(string: articleresource.url)!)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .clipShape(Capsule())
                        
                    Link(articleresource.urlname2, destination: URL(string: articleresource.url1)!)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .clipShape(Capsule())
                        
                }
                
                
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(articleresource.discription)
                    
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text("Information")
                            .font(.headline)
                        
                        Text(articleresource.information)
                    }
                    
                }
                
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading )
                
            }
            .padding(.horizontal)
            .ignoresSafeArea()
            
            
            
            
        }
        .padding(.vertical)
    }
    
    struct ResourceView_Previews: PreviewProvider {
        static var previews: some View {
            ResourceView(articleresource: ArticleResource.productList[0])
        }
    }
    
}
