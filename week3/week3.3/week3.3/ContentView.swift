//
//  ContentView.swift
//  week3.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(.example)
                .resizable()
                .scaledToFit()
                //.frame(width: 300, height: 300)
                .containerRelativeFrame(.horizontal) {size, axis in
                    size * 0.8
                }
        }
    }
}

#Preview {
    ContentView()
}
