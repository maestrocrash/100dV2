//
//  WhyView.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 31.10.2023.
//

import SwiftUI

struct WhyView: View {
    var body: some View {
        Text("Hello, World!")
        Text("Hello world 2")
        
        Button("Tap me!") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200, alignment: .bottom)
        .background(.red)
    }
}

#Preview {
    WhyView()
}
