//
//  MainView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 20/02/2023.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabBar()
            .navigationBarBackButtonHidden(true)
    }
    
}
    

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            
    }
}
