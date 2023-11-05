//
//  ContentView.swift
//  WordScramble
//
//  Created by MICHAIL SHAKHVOROSTOV on 02.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State var userWords = [String]()
    @State var rootWords = ""
    @State var newWord = ""
    
    @State var errorTitle = ""
    @State var errorMessage = ""
    @State var errorAlert = false
    
    @State var score: Int = 0
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your words", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                Section {
                    ForEach(userWords, id: \.self) {word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
    
                            Text(word)
                        }
                    }
                }
                
                
            }
            .navigationTitle(rootWords)
            .onSubmit {
                addNewWords()
            }
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $errorAlert) { } message: {
                Text(errorMessage)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Start Game") {
                        startGame()
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Text("Score: \(score)")
                }
            }
            
        }
    }

}

#Preview {
    ContentView()
}
