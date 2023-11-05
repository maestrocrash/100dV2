//
//  EnviromentModifyView.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct EnviromentModifyView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
        .font(.title)
        .blur(radius: 5)
    }
}

#Preview {
    EnviromentModifyView()
}
