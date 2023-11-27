//
//  ContentView.swift
//  week5.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColor = [Color.red, Color.yellow]
    var offColor = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(colors: isOn ? onColor : offColor, startPoint: .bottom, endPoint: .center))
        .foregroundStyle(.white)
        .clipShape(.capsule)
        .shadow(radius: isOn ? 0 : 5)
    }
}

struct ContentView: View {
    
    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            PushButton(title: "Remember me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
    
}

#Preview {
    ContentView()
}
