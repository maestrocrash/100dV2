//
//  BackToRootView.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI


@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
        
        path = NavigationPath()
    }
    
    func save() {
        guard let representation = path.codable else {return}
        
        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}

struct DetailViewNumber: View {
    var number: Int
   // @Binding var path: [Int]
   // @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number \(number)")
            .toolbar {
                Button("Home") {
                   // path.removeAll()
                    
                  //  path = NavigationPath()
                }
            }
    }
}

struct BackToRootView: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailViewNumber(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailViewNumber(number: i)
                }
        }
    }
}

#Preview {
    BackToRootView()
}
