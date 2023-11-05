//
//  ContentView.swift
//  week1
//
//  Created by MICHAIL SHAKHVOROSTOV on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
        @State private var tapCount = 0
    
    var body: some View {
        
        Button("Tap - \(tapCount)") {
            tapCount += 1
        }
        
NavigationStack {
        Form {
            Section("Test") {
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
        }
    }
//
//                Section {
//                    Text("Hello world")
//                    Text("Hello world")
//                    Text("Hello world")
//                }
//                
//                Section("Hello") {
//                    Text("Hello world")
//                    Text("Hello world")
//                    Text("Hello world")
//                    Text("Hello world")
//                    Text("Hello world")
//                    Text("Hello world")
//                }
//                
//            }
//            .navigationTitle("SwiftUI")
//          // .navigationBarTitleDisplayMode(.inline)
//        }
    }
}

#Preview {
    ContentView()
}
