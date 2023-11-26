//
//  ContentView.swift
//  week4.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct Responce: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct ContentView: View {
    @State private var results = [Result]()
    
    
    var body: some View {
        List(results, id: \.trackId) {item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                
                Text(item.collectionName)
            }
            
        }
        .task {
            await loadData()
        }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URl")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponce = try? JSONDecoder().decode(Responce.self, from: data) {
                results = decodedResponce.results
            }
        } catch {
            print("Invalid data")
        }
    }
}

#Preview {
    ContentView()
}
