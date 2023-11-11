//
//  LettersAnimation.swift
//  week3.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 07.11.2023.
//

import SwiftUI

struct LettersAnimation: View {
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var colorBack: [Color] = [.green, .red, .blue, .purple, .pink, .yellow]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) {num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(colorBack.randomElement())
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged{dragAmount = $0.translation}
                .onEnded {_ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
}

#Preview {
    LettersAnimation()
}
