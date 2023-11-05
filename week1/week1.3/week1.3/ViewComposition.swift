//
//  ViewComposition.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    var color: Color
    
    var body: some View {
        Text(text)
            .padding()
            .foregroundStyle(.white)
            .background(color)
            .font(.largeTitle)
            .clipShape(Capsule())
            
    }
}

struct ViewComposition: View {
    var body: some View {
        CapsuleText(text: "Hello, World!", color: .green)
        CapsuleText(text: "Hello", color: .yellow)
    }
}

#Preview {
    ViewComposition()
}
