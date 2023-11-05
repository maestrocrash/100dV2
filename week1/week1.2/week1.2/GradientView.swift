//
//  GradientView.swift
//  week1.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 29.10.2023.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        VStack {
            //LinearGradient(colors: [Color.red, Color.green], startPoint: .top, endPoint: .bottomLeading)
            
       /*     LinearGradient(stops: [.init(color: .green, location: 0.3),
                                   .init(color: .red, location: 0.9)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
        */
            
            
            //RadialGradient(colors: [.black, .blue], center: .center, startRadius: 20, endRadius: 200)
            
           // AngularGradient(colors: [.red, .green, .blue, .purple, .red], center: .center)
            
            Text("Hello world")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.red.gradient)
        }
        .ignoresSafeArea()
    }
    
}

#Preview {
    GradientView()
}
