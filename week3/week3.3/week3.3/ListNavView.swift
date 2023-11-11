//
//  ListNavView.swift
//  week3.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct ListNavView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("Swift UI")
        }
    }
}

#Preview {
    ListNavView()
}
