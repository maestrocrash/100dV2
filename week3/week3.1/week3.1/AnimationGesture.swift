//
//  AnimationGesture.swift
//  week3.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 07.11.2023.
//

import SwiftUI

struct AnimationGesture: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 200, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged {dragAmount = $0.translation}
                    .onEnded {_ in
                        withAnimation(.bouncy(duration: 0.3, extraBounce: 0.3)) {
                            dragAmount = .zero
                        }
                    }
            )
          //  .animation(.bouncy(duration: 0.3, extraBounce: 0.3), value: dragAmount)
    }
}

#Preview {
    AnimationGesture()
}
