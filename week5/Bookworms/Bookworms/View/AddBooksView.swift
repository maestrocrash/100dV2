//
//  AddBooksView.swift
//  Bookworms
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftUI

struct AddBooksView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var review = ""
    @State private var genre = "Fantasy"
    
    let genres = ["Fantasy", "Romantic", "Kids", "Horror", "Thriller"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name book", text: $title)
                    TextField("Author name", text: $author)
                    
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section("Write a review") {
                    TextEditor(text: $review)
                    
                    RatingView(rating: $rating)
                    
//                    Picker("Rating", selection: $rating) {
//                        ForEach(0..<6) {
//                            Text(String($0))
//                        }
//                    }
                }
                
                Section {
                    Button("Save") {
                        
                        let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        modelContext.insert(newBook)
                        
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add book")
        }
    }
}

#Preview {
    AddBooksView()
}
