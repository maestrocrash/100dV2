//
//  ButtonTest.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 31.10.2023.
//

import SwiftUI

struct ButtonTest: View {
    var body: some View {
        Button("Hello world") {
            print(type(of: self.body))
        }
        //порядок важен
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

#Preview {
    ButtonTest()
}
