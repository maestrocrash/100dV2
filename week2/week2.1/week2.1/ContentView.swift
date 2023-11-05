//
//  ContentView.swift
//  week2.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    
    var body: some View {
        VStack {
            Stepper("Hours sleep \(sleepAmount.formatted())", value: $sleepAmount, in: 4...12, step: 0.25)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
