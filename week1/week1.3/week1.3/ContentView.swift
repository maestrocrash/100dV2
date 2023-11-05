//
//  ContentView.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 31.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
    }
}

#Preview {
    ContentView()
}
