//
//  ScrollViewScrollingData.swift
//  week3.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct ScrollViewScrollingData: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.largeTitle)
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

#Preview {
    ScrollViewScrollingData()
}
