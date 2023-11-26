//
//  ContentView.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Text \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<1000) { i in
                NavigationLink("Tap me \(i)") {
                    DetailView(number: i)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
