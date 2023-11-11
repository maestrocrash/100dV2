//
//  ShowHiddingTransition.swift
//  week3.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 07.11.2023.
//

import SwiftUI

struct ShowHiddingTransition: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation(.bouncy) {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
               
            }
        }
    }
}

#Preview {
    ShowHiddingTransition()
}
