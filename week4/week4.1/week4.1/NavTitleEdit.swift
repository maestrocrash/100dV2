//
//  NavTitleEdit.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct NavTitleEdit: View {
    
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavTitleEdit()
}
