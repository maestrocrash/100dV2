//
//  ExplicitAnimations.swift
//  week3.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 06.11.2023.
//

import SwiftUI

struct ExplicitAnimations: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.spring(duration: 1, bounce: 0.4)) {
                animationAmount += 360
            }
        }
        .padding(40)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0.0, y: 1.0, z: 1.0))
        
    }
}

#Preview {
    ExplicitAnimations()
}
