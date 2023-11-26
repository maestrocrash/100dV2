//
//  CustomNavBar.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct CustomNavBar: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    CustomNavBar()
}
