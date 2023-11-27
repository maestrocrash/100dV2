//
//  DetailView.swift
//  Bookworms
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftData
import SwiftUI

struct DetailView: View {
    let book: Book
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .bottomTrailing) {
                Image(book.genre)
                    .resizable()
                    .scaledToFit()
                
                Text(book.genre.uppercased())
                    .fontWeight(.black)
                    .padding(8)
                    .foregroundStyle(.white)
                    .background(.black.opacity(0.75))
                    .offset(x: -5, y: -5)
                    .clipShape(.rect(cornerRadius: 10))
            }
            
            Text(book.author)
                .font(.largeTitle)
                .foregroundStyle(.secondary)
            
            Text(book.review)
                .padding()
            
            RatingView(rating: .constant(book.rating))
                .font(.largeTitle)
            
        }
        .navigationTitle(book.title)
        .navigationBarTitleDisplayMode(.inline)
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    do {
        
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Book.self, configurations: config)
        let example = Book(title: "Test", author: "Test", genre: "Fantasy", review: "Крутая книга, читал бы и читал но не буду Крутая книга, читал бы и читал но не будуКрутая книга, читал бы и читал но не будуКрутая книга, читал бы и читал но не будуКрутая книга, читал бы и читал но не буду", rating: 5)
        
        return DetailView(book: example)
                .modelContainer(container)
    } catch {
        return Text("Error")
    }
}
