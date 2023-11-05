//
//  ContentView.swift
//  week2.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 02.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let people = ["Finn", "Leai", "Luke", "Rey"]
        
        List {
            Section {
                Text("Static row 1")
                Text("Static row 2")
            }
            
            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic rows \($0)")
                }
            }
            
            Section("Section 3") {
                Text("Static row 3")
                Text("Static row 4")
            }
        }
        .listStyle(.grouped)
        
        List(0..<5, id: \.self) {
            Text("Static text \($0)")
        }
        
        List(people, id: \.self) {
            Text($0)
        }
        
        List {
            Text("Static row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static row")
        }
    }
}

#Preview {
    ContentView()
}
