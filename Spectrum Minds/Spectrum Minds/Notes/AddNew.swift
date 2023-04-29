//
//  AddNew.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 20/02/2023.
//

import Foundation
import SwiftUI
 
struct AddNew: View {
    @State private var title = ""
    @State private var content = ""
    @EnvironmentObject var notes: Notes
    @Environment(\.dismiss) var dismiss
     
    var body: some View {
        
        Form {
            Section {
                TextField("Give a title for your diary entry", text: $title)
                    .foregroundColor(.secondary)
                ZStack {
                    TextEditor(text: $content)
                        .frame(height: 200)
                        .foregroundColor(.primary)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("\(content.count)/500")
                                .foregroundColor(.secondary)
                                .padding()
                        }
                    }
                }
                HStack {
                    Spacer()
                    Button("Add an Entry!") {
                        notes.addNote(title: title, content: content)
                        dismiss()
                    }
                    .foregroundColor(.primary)
                    Spacer()
                }
            }
            
        }
        
        
        
    }
    }

struct AddNew_Previews: PreviewProvider {
    static var previews: some View {
        AddNew()
            .environmentObject(Notes())
    }
}
