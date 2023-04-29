//
//  ContentView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 18/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       
        NavigationStack{
            ZStack{
                Color(red: 240/255, green: 128/255, blue: 128/255)
                VStack{
                Image("MainImage")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -60)
                
                    
                    Text("Welcome to Spectrum Minds")
                        .multilineTextAlignment(.center)
            
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .offset(y: -70)
                    
                    Text("Spectrum minds is an application that holds the resources that you might need for improving your mental health. The app holds a music page that plays a researched music that has been proven to help in anxiety and it also has a place for you to store your daily thoughts in form of a diary entry.")
                        
                        .font(.system(size: 20))
                        .padding()
                        
                        .multilineTextAlignment(.center)
                        .offset(y: -90)
                    
                }
                    
                NavigationLink{
                    MainView()
                } label: {
                    Label("Let's Begin", systemImage: "Home")
                       }
                .padding()
                .foregroundColor(.white)
                .bold()
                .background(Color(red: 0, green: 0, blue: 0.5))
                .clipShape(Capsule())
                .offset(y: 350)
                
            }
            .foregroundColor(.primary)
            .ignoresSafeArea()
        }
        
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
