//
//  animationBindings.swift
//  week3.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 06.11.2023.
//

import SwiftUI

struct animationBindings: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        print(animationAmount)
        
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 3)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                withAnimation {
                    animationAmount += 1
                }
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    animationBindings()
}
