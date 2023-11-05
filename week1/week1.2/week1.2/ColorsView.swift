//
//  ColorsView.swift
//  week1.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 29.10.2023.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
 
            }
            Text("Hello, world!")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        
        /*
        VStack(spacing: 29) {
            ZStack {
                Color.red
                    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
                Text("Text")
            }
            
            ZStack {
                Color.secondary
                    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
                
                Text("hello world")
            }
            .background(.blue)
            
            VStack {
                Text("Hello wordl!")
            }
            
        }
        .ignoresSafeArea()
        .background(.gray)
*/
    }
        
}

#Preview {
    ColorsView()
}
