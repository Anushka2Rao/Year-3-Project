//
//  NoteView.swift
//  Spectrum Minds
//
//  Created by Anushka Rao on 20/02/2023.
//
import SwiftUI
 
struct NoteView: View {
    @EnvironmentObject var notes: Notes
     
    var body: some View {
            List {
               
                ForEach(notes.notes) { note in
                    VStack(alignment: .leading) {
                        Text(note.title)
                            .foregroundColor(.primary)
                            .font(.headline)
                        Text(note.content)
                            .font(.body)
                            .padding(.vertical)
                            .foregroundColor(.primary)
                        
                        HStack {
                            Spacer()
                            Text("\(note.timeStamp)")
                                .foregroundColor(.secondary)
                                .italic()
                                .bold()
                        }
                    }
                    
                }
                .onDelete(perform: deleteNote)
            }
        
    }
    func deleteNote(at offsets: IndexSet) {
        notes.notes.remove(atOffsets: offsets)
    }
}
 
struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
            .environmentObject(Notes())
    }
}
