//
//  AnimationStack.swift
//  week3.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 06.11.2023.
//

import SwiftUI

struct AnimationStack: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button {
            enabled.toggle()
        } label: {
            Text("Tap me")
               
                .frame(width: 200, height: 200)
                .background(enabled ? .blue : .red)
                .foregroundStyle(.white)
                .animation(.default, value: enabled)
                .clipShape(.rect(cornerRadius: 10))
        }
            
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200, alignment: .center)
        .background(enabled ? .red : .blue )
        .foregroundStyle(.white)
        .animation(nil, value: enabled)
        //.animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0)) //порядок важен, должно быть перед animation
        .animation(.spring(duration: 1, bounce: 0.9), value: enabled) //это анимация будет применяться до предыдущего animation
        
    }
    
    
}

#Preview {
    AnimationStack()
}
