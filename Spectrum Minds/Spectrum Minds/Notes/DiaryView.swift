//
//  DiaryView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 18/02/2023.
//

import SwiftUI
 
struct DiaryView: View {
    @StateObject var notes = Notes()
    @State private var sheetIsShowing = false
     
    var body: some View {
            NavigationView {
                
                VStack {
                    NoteView()
                        .sheet(isPresented: $sheetIsShowing) {
                            AddNew()
                        }
                }
                .navigationTitle("My Diary") .foregroundColor(.primary)
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            withAnimation {
                                self.sheetIsShowing.toggle()
                            }
                        } label: {
                            Label("Add a diary entry", systemImage: "plus.circle.fill")
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
            .environmentObject(notes)
        }
    }

 
struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView()
    }
}
