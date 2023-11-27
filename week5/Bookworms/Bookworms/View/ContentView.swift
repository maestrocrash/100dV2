//
//  ContentView.swift
//  Bookworms
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @Query var books: [Book]
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(books) {book in
                    NavigationLink(value: book) {
                        HStack {
                            EmojiRatinView(rating: book.rating)
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(book.title)
                                    .font(.headline)
                                
                                Text(book.author)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Bookworm")
            .navigationDestination(for: Book.self) { book in
                DetailView(book: book)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add", systemImage: "plus") {
                        showingAddScreen.toggle()
                    }
                }
            }
            .sheet(isPresented: $showingAddScreen) {
                AddBooksView()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Book.self)
}
